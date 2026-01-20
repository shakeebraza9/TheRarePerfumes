<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Product;
use App\Models\Attribute;
use App\Models\Cart;
use App\Models\Value;
use App\Models\Category;
use App\Models\Collection;
use App\Models\Variation;
use App\Models\VariationAttribute;
use App\Models\Slider;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\DB;

class CartController extends Controller
{

    /**
     * Create a new controller instance.
     * @return void
     */
    public function __construct()
    {
        

    }

      /**
     * Show the application dashboard.
     * @return \Illuminate\Contracts\Support\Renderable
     */
public function getCart()
{
    $carts = Cart::get_cart_details();
    $item = "";
    $discountSetting = DB::table('settings')->where('field', 'discount_percent')->first();
    $discountPercent = $discountSetting ? floatval($discountSetting->value) : 0;
    foreach ($carts['cart_items'] as $key => $value) {
        $item .= '<li class="item">
            <a class="product-image" href="'.$value['link'].'">
                <img src="'.$value['image'].'">
            </a>
            <div class="product-details">
                <a href="'.$value['remove'].'" class="remove" data-bs-toggle="tooltip" data-bs-placement="top" style="cursor: pointer;" data-bs-original-title="Remove">
                    <i class="an an-times" aria-hidden="true"></i>
                </a>
                <a class="pName" href="'.$value['link'].'">'.$value['title'].'</a>
                <div class="variant-cart">SKU: '.$value['sku'].'</div>
                <div class="m-0 wrapQtyBtn clearfix">
                    <span class="label">Qty: '.$value['quantity'].'</span>
                </div>
                <div class="m-0 priceRow clearfix">
                    <div class="product-price">
                        Price: ';
                        
        if ($discountPercent) {
            $item .= '
                
                        <span class="money text-danger fw-bold">PKR '.$value['price'].'</span>
                        <span class="badge bg-success ms-2">-'.round($discountPercent).'%</span>';
        } else {
            $item .= '
                        <span class="money">PKR '.$value['price'].'</span>';
        }

        $item .= '
                    </div>
                </div>
            </div>
        </li>';
    }

    $html = '<div class="modal-dialog">
        <div class="modal-content">
            <div class="minicart-header">
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="an an-times" aria-hidden="true" data-bs-toggle="tooltip" data-bs-placement="left" title="" data-bs-original-title="Close" aria-label="Close"></i>
                </button>
                <h4 class="modal-title" id="myModalLabel2">Shopping Cart 
                    <strong>'.count($carts['cart_items']).'</strong> items
                </h4>
            </div>
            <div class="minicart-body">
                <div id="drawer-minicart" class="block block-cart">
                    <ul class="mini-products-list">
                        '.$item.'
                    </ul>
                </div>
            </div>
            <div class="minicart-footer minicart-action">
                <div class="total-in">
                    <p class="label"><b>Subtotal:</b>
                        <span class="item product-price">
                            <span class="subtotal">PKR '.$carts['subtotal'].'</span>
                        </span>
                    </p>
                    <p class="label"><b>Delivery Charges:</b>
                        <span class="item product-price">
                            <span class="delivery_charges">PKR '.$carts['delivery_charges'].'</span>
                        </span>
                    </p>
                    <p class="label"><b>Grand Total:</b>
                        <span class="item product-price">
                            <span class="grand_totals">PKR '.$carts['grand_total'].'</span>
                        </span>
                    </p>
                </div>
                <div class="buttonSet d-flex flex-row align-items-center text-center">
                    <a href="'.URL::to('/cart').'" class="btn btn-secondary w-50 me-3">View Cart</a>
                    <a href="'.URL::to('checkout').'" class="btn btn-secondary w-50">Checkout</a>
                </div>
            </div>
        </div>
    </div>';

    return response()->json([
        'html' => $html,
        'count' => count($carts['cart_items']),
    ]);
}

public function checkStock(Request $request)
{
    $sku = Variation::find($request->sku_id);

    if (!$sku) {
        return response()->json([
            'availableQty' => 0,
            'status' => 'not_found'
        ]);
    }

    $orderedQty = (int) DB::table('order_items')
        ->join('orders', 'order_items.order_id', '=', 'orders.id')
        ->where('order_items.variation_id', $sku->id)
        ->whereIn('orders.order_status', [5, 6]) // Replace with your actual status IDs
        ->sum('order_items.quantity');

    $availableQty = max(0, (int) $sku->quantity - $orderedQty);

    $status = $availableQty <= 0
        ? (($sku->quantity > 0) ? 'sold_out' : 'out_of_stock')
        : 'in_stock';

    return response()->json([
        'availableQty' => $availableQty,
        'status' => $status
    ]);
}



      /**
     * Show the application dashboard.
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function cart()
    {

        $cart = session()->get('cart', []);

        if(count($cart) == 0){
            return redirect('/shop')->with('error','Cart Is Empty');
        }

     
        return view('theme.cart');
    }

     /**
     * Show the application dashboard.
     * @return \Illuminate\Contracts\Support\Renderable
     */
public function add_to_cart(Request $request)
{
    $sku = Variation::where('id', $request->sku)->first();
    if (!$sku) {
        return response()->json(["message" => "Sku Not Found Product"], 400);
    }

$orderedQty = (int) DB::table('order_items')
    ->join('orders', 'order_items.order_id', '=', 'orders.id')
    ->where('order_items.variation_id', $sku->id)
     ->whereIn('orders.order_status', [5,6])
    ->sum('order_items.quantity');

   
    $availableQty = $sku->quantity - $orderedQty;
    if ($availableQty <= 0) {
        return response()->json(["message" => "This product is out of stock"], 400);
    }

    $action = $request->action;
    $quantity = $request->quantity ? intval($request->quantity) : 1;

    $cart = session()->get('cart', []);

    if (isset($cart[$sku->id])) {
        $old_qty = $cart[$sku->id]['quantity'];
        $new_qty = $old_qty;

        if ($action == 'increament') {
            $new_qty += $quantity;
        } elseif ($action == 'decreament') {
            $new_qty -= $quantity;
        } else {
            $new_qty = $quantity;
        }

        if ($new_qty <= 0) {
            unset($cart[$sku->id]);
        } elseif ($new_qty > $availableQty) {
            return response()->json(["message" => "Only {$availableQty} item(s) available in stock"], 400);
        } else {
            $cart[$sku->id]['quantity'] = $new_qty;
        }

    } else {
      
        if ($quantity > $availableQty) {
            return response()->json(["message" => "Only {$availableQty} item(s) available in stock"], 400);
        }

        $values = Value::whereIn('id', $request->attr)->get()->pluck('id')->toArray();
        if (count($values) == 0) {
            return response()->json(["message" => "Attributes Not Found"], 200);
        }

        $cart[$sku->id] = [
            "sku" => $sku->id,
            "quantity" => $quantity,
            "attributes" => $values,
        ];
    }

    session()->put('cart', $cart);

    return response()->json(["message" => "Product Added In Cart"], 200);
}



    public function get_cart_details(Request $request){

        
        return response()->json(Cart::get_cart_details(),200);
    
    }


     /**
     * Show the application dashboard.
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function cart_remove(Request $request,$id)
    { 
        $cart = session()->get('cart', []);
        if (isset($cart[$id])) {
            unset($cart[$id]);
            session()->put('cart', $cart);
        }

        if($request->ajax()){
            return response()->json(["message" => "Item Removed From Cart"],200);
        }else{
            return  back()->with('success',"Item Removed From Cart");
        }

    }

       /**
     * Show the application dashboard.
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function cart_clear()
    { 
        session()->put('cart', []);
        return back()->with('success','Cart Empty');

    }

    
}