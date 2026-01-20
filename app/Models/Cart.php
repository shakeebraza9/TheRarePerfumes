<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\View;

class Cart 
{
    
    public static function get_cart_details(){
        
    
        $delivery_charges = View::shared('_s')['delivery_charges'] ?? 0;

    // Get global discount percentage
    $discountSetting = DB::table('settings')->where('field', 'discount_percent')->first();
    $discountPercent = $discountSetting ? floatval($discountSetting->value) : 0;

    $total = 0;
    $cart_items = [];   
    $cart = session()->get('cart', []);

    foreach ($cart as $key => $c) {
        
        $products = Variation::select([
            'products.id',
            'products.title',
            'products.slug',
            'variations.id as variation_id',
            'variations.sku as sku',
            'products.image',
            'variations.quantity as quantity',
            'variations.price'
        ])
        ->join('products','products.id','=','variations.product_id')
        ->where('variations.id',$c['sku'])
        ->get();

        if(count($products) == 0){
            continue;
        }

        $products = $products->first()->toArray();
        $attributes = [];

        if($c['attributes']){
            $attributes = Value::select([
                'attributes.title as attribute_title',
                'attributes.id as attribute_id',
                'values.id as values_id',
                'values.title as values_title',
            ])
            ->join('attributes','attributes.id','=','values.attribute_id')
            ->whereIn('values.id',array_values($c['attributes']))
            ->get()
            ->toArray();
        }

        // Apply discount
        $originalPrice = $products['price'];
        $discountAmount = ($originalPrice * $discountPercent) / 100;
        $finalPrice = round($originalPrice - $discountAmount, 2);
        $itemTotal = $finalPrice * $c['quantity'];

        $total += $itemTotal; 

        array_push($cart_items, [
            "id" => Crypt::encryptString($products['id']),
            "title" => $products['title'],
            "sku" => $products['sku'],
            "slug" => $products['slug'],
            "variation_id" => $products['variation_id'],
            "image" => asset($products['image']),
            "quantity" => $c['quantity'],
            "price" => $finalPrice, // Discounted price
            "total" => $itemTotal,  // Discounted total
            "cart_qty" => $c['quantity'],
            "link" => URL::to('/products').'/'.$products['slug'],
            "remove" => URL::to('/cart/remove/').'/'.$products['variation_id'],
            "attributes" => $attributes,
        ]);
    }

    return [
        'currency' => 'PKR',
        'subtotal' => round($total, 2),
        'delivery_charges' => $total ? $delivery_charges : 0,
        'grand_total' => $total ? round($total + $delivery_charges, 2) : 0,
        'cart_items' => $cart_items
    ];
    }

   


}
