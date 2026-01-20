<?php

namespace App\Exports;

use App\Models\Variation;
use App\Models\OrderItem;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class InventoryExport implements FromCollection, WithHeadings
{
    protected $request;

    public function __construct($request)
    {
        $this->request = $request;
    }

    public function collection()
    {
        $query = Variation::with('product.category');

        // optional category filter
        if($this->request->category_id){
            $query->whereHas('product.category', function($q){
                $q->where('id', $this->request->category_id);
            });
        }

        $variations = $query->get();

        return $variations->map(function($var){
            $category = optional(optional($var->product)->category)->title ?? '';
            $product_title = optional($var->product)->title ?? '';
            $variation = $var->sku ?? '';
            $price = $var->price ?? 0;
            $total_stock = $var->quantity ?? 0;

            // 🔹 Sold quantity (only completed/delivered orders)
            $sold = OrderItem::where('variation_id', $var->id)
                ->join('orders', 'orders.id', '=', 'order_items.order_id')
                ->whereIn('orders.order_status', [5,6]) // 5 = Delivery Process, 6 = Complete
                ->sum('order_items.quantity');

            $available_stock = $total_stock - $sold;
            $low_stock = $available_stock <= 5 ? 'Yes' : 'No';

            return [
                'Category'        => $category,
                'Product Title'   => $product_title,
                'Variation'       => $variation,
                'Price'           => $price,
                'Total Stock'     => $total_stock,
                'Sold'            => $sold,
                'Available Stock' => $available_stock,
                'Low Stock'       => $low_stock,
            ];
        });
    }

    public function headings(): array
    {
        return ['Category', 'Product Title', 'Variation', 'Price', 'Total Stock', 'Sold', 'Available Stock', 'Low Stock'];
    }
}
