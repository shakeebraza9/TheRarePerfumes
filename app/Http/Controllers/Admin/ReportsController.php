<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Order;
use App\Models\Variation;
use App\Models\OrderStatus;
use Illuminate\Http\Request;
use App\Models\PaymentMethod;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\URL;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Exports\OrdersExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\InventoryExport;
class ReportsController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function clientIndex(Request $request)
    {


        if($request->ajax()){

            $query = Order::Query();
            if($request->name){
                $query->where('customer_name','like','%'.$request->name.'%');
            }
            if($request->email){
                $query->where('customer_email',$request->email);
            }
            if($request->phone){
                $query->where('customer_phone','like','%'.$request->phone.'%');
            }
            if($request->address){
                $query->where('address','like','%'.$request->address.'%');
            }
            if($request->orderNumber){
                $query->where('id',$request->orderNumber);
            }
            if($request->totalAmount ){
                $query->where('grandtotal', 'like', '%' . $request->totalAmount . '%');
            }
            if ($request->startDate && $request->endDate) {
                $query->whereBetween('created_at', [$request->startDate, $request->endDate]);
            }

            if ($request->paymentMethod) {
                $query->where('payment_method', 'like', '%' . $request->paymentMethod . '%');
            }
            if($request->orderStatus){
                $query->where('order_status',$request->orderStatus);
            }
            if($request->paymentStatus){
                $query->where('payment_status',$request->paymentStatus);
            }

            $query = $query->orderBy('id', 'desc');
            $count = $query->get();

            $records = $query->skip($request->start)
            ->take($request->length)
            ->get();

            $data = [];
            foreach ($records as $key => $value) {
                $staus=OrderStatus::where('id',$value->order_status)->first();
                $PaymentMethod=PaymentMethod::where('id',$value->payment_method)->first();
                $track = '<a class="" target="_blank" href="'.URL::to('/order-confirmaton/'.$value->tracking_id).'">'.$value->tracking_id.'</a>';


                $action = '<a class="" href="'.URL::to('admin/orders/edit/'.Crypt::encryptString($value->id)).'">#'.$value->id.'</a>';

                array_push($data,[
                    $action,
                    $value->created_at->format('Y-m-d'),
                    $value->customer_name,
                    $value->customer_email,
                    $value->customer_phone,
                    $value->address,
                    // $track,
                    // $action,
                    $staus ? $staus->title :'',
                    $PaymentMethod ? $PaymentMethod->title :'',
                    // str_replace('_', ' ',$value->payment_method),
                    $value->payment_status,
                    'PKR '.$value->grandtotal,
                 ]
                );
            }

            return response()->json([
                "draw" => $request->draw,
                "recordsTotal" => count($count),
                "recordsFiltered" => count($count),
                'data'=> $data,
            ]);
        }

        $category = Category::all();
        $status = OrderStatus::all();
        $PaymentMethod = PaymentMethod::all();
        return view('admin.reports.clients.index',compact('category','status','PaymentMethod'));
    }

public function exportPdf(Request $request)
{
    $query = Order::query();

    if ($request->name) {
        $query->where('customer_name', 'like', '%' . $request->name . '%');
    }
    if ($request->email) {
        $query->where('customer_email', $request->email);
    }
    if ($request->phone) {
        $query->where('customer_phone', 'like', '%' . $request->phone . '%');
    }
    if ($request->address) {
        $query->where('address', 'like', '%' . $request->address . '%');
    }
    if ($request->orderNumber) {
        $query->where('id', $request->orderNumber);
    }
    if ($request->totalAmount) {
        $query->where('grandtotal', 'like', '%' . $request->totalAmount . '%');
    }
    if ($request->startDate && $request->endDate) {
        $query->whereBetween('created_at', [$request->startDate, $request->endDate]);
    }
    if ($request->paymentMethod) {
        $query->where('payment_method', 'like', '%' . $request->paymentMethod . '%');
    }
    if ($request->orderStatus) {
        $query->where('order_status', $request->orderStatus);
    }
    if ($request->paymentStatus) {
        $query->where('payment_status', $request->paymentStatus);
    }

    $orders = $query->orderBy('id', 'desc')->get();
  
    $pdf = Pdf::loadView('admin.reports.clients.pdf', compact('orders'));
    return $pdf->download('orders_report.pdf');
}

public function exportExcel(Request $request)
{
    return Excel::download(new OrdersExport($request), 'orders_report.xlsx');
}
    public function productIndex(Request $request)
    {

        if($request->ajax()){

            $query = Order::Query();
            if($request->name){
                $query->where('customer_name','like','%'.$request->name.'%');
            }
            if($request->email){
                $query->where('customer_email',$request->email);
            }
            if($request->phone){
                $query->where('customer_phone','like','%'.$request->phone.'%');
            }
            if($request->address){
                $query->where('address','like','%'.$request->address.'%');
            }
            if($request->orderNumber){
                $query->where('id',$request->orderNumber);
            }
            if($request->totalAmount ){
                $query->where('grandtotal', 'like', '%' . $request->totalAmount . '%');
            }
            if ($request->startDate && $request->endDate) {
                $query->whereBetween('created_at', [$request->startDate, $request->endDate]);
            }

            if ($request->paymentMethod) {
                $query->where('payment_method', 'like', '%' . $request->paymentMethod . '%');
            }
            if($request->orderStatus){
                $query->where('order_status',$request->orderStatus);
            }
            if($request->paymentStatus){
                $query->where('payment_status',$request->paymentStatus);
            }

            $query = $query->orderBy('id', 'desc');
            $count = $query->get();

            $records = $query->skip($request->start)
            ->take($request->length)
            ->get();

            $data = [];
            foreach ($records as $key => $value) {
                $staus=OrderStatus::where('id',$value->order_status)->first();
                $track = '<a class="" target="_blank" href="'.URL::to('/order-confirmaton/'.$value->tracking_id).'">'.$value->tracking_id.'</a>';

             
                $action = '<a class="" href="'.URL::to('admin/reports/clients/edit/'.Crypt::encryptString($value->id)).'">#'.$value->id.'</a>';

                array_push($data,[
                    $action,
                    $value->created_at->format('Y-m-d'),
                    $value->customer_name,
                    $value->customer_email,
                    $value->customer_phone,
                    $value->address,
                    // $track,
                    // $action,
                    $staus ? $staus->title :'',
                    str_replace('_', ' ',$value->payment_method),
                    $value->payment_status,
                    'PKR '.$value->grandtotal,
                 ]
                );
            }

            return response()->json([
                "draw" => $request->draw,
                "recordsTotal" => count($count),
                "recordsFiltered" => count($count),
                'data'=> $data,
            ]);
        }

        $category = Category::all();
        return view('admin.reports.product.index',compact('category'));
    }
public function inventoryIndex(Request $request)
{
    if($request->ajax()){
        // Eager load product & category
        $query = Variation::with('product.category');

        // Optional category filter
        if($request->category_id){
            $query->whereHas('product.category', function($q) use($request){
                $q->where('id', $request->category_id);
            });
        }

        $count = $query->count();

        $records = $query->skip($request->start ?? 0)
                         ->take($request->length ?? 10)
                         ->get();

        $data = [];

        foreach($records as $var){
            $category = optional(optional($var->product)->category)->title ?? '';
            $product_title = optional($var->product)->title ?? '';
            $variation = $var->sku ?? '';
            $price = $var->price ?? 0;
            $stock = $var->quantity ?? 0;

            // 🔹 Sold quantity
            $sold = \App\Models\OrderItem::where('variation_id', $var->id)
                    ->join('orders', 'orders.id', '=', 'order_items.order_id')
                    ->whereIn('orders.order_status', [5,6]) // only delivered/completed
                    ->sum('order_items.quantity');

            $available_stock = $stock - $sold;
            $low_stock = $available_stock <= 5 ? 'Yes' : 'No';

            $data[] = [
                $category,
                $product_title,
                $variation,
                $price,
                $stock,          // Total Stock
                $sold,           // Sold
                $available_stock,// Available
                $low_stock       // Low Stock
            ];
        }


        return response()->json([
            "draw" => $request->draw,
            "recordsTotal" => $count,
            "recordsFiltered" => $count,
            'data'=> $data,
        ]);
    }

    $categories = Category::all();
    return view('admin.reports.inventory.index',compact('categories'));
}


public function inventoryExport(Request $request)
{
    // pass filters if needed
    return Excel::download(new InventoryExport($request), 'inventory_report.xlsx');
}


}
