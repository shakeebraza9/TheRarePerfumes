<?php

namespace App\Http\Utilities;

use App\Models\Order;
use App\Models\Setting;
use App\Models\OrderStatus;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\View;

class EmailUtility
{


   public static function getPdf($id){
    $settings = Setting::pluck('value', 'field')->toArray();
    $data = Order::find($id);

    $status = OrderStatus::where('id', $data->order_status)->first();

    $mpdf = new \Mpdf\Mpdf([
        'mode' => 'utf-8',
        'orientation' => 'P',
        'format'      => 'A4',
        'margin_left' => 0,
        'margin_right' => 0,
        'margin_top' => 0,
        'margin_bottom' => 0,
    ]);

    $html = Blade::render('theme.invoice', compact('data', 'settings', 'status'));
    $mpdf->WriteHTML($html);
    $pdfContent = $mpdf->Output('', 'S');
    return $pdfContent;
}



public static function generatePdf($id)
{
    $pdfContent = EmailUtility::getPdf($id);
    $directory = public_path('admin/invoices');

    // Create the directory if it doesn't exist
    if (!file_exists($directory)) {
        mkdir($directory, 0755, true);
    }

    $pdfPath = $directory . '/' . $id . '.pdf';
    file_put_contents($pdfPath, $pdfContent);

    return $pdfPath;
}

public static function send_customer_email($id)
{
    $order = Order::find($id);

    if (!$order) {
        return;
    }

    $data = $order->toArray();
    $data['pdf_path'] = EmailUtility::generatePdf($id);
    $data['admin_email'] = View::shared('_s')['email_address'];
    $data['site_title'] = View::shared('_s')['site_title'];

    // ✔ If customer email missing → send to admin instead
    $receiverEmail = !empty($data['customer_email'])
                        ? $data['customer_email']
                        : $data['admin_email'];

    Mail::send('theme.emails.order-confirmation-email', $data, function($message) use ($data, $receiverEmail) {

        $message->to($receiverEmail);  // 👈 final receiver here
        $message->subject('Order Receipt - #' . $data['id']);
        $message->from(env('MAIL_USERNAME'), $data['site_title']);

        // only CC admin if sending to customer
        if ($receiverEmail !== $data['admin_email']) {
            $message->cc($data['admin_email']);
        }

        $message->attach($data['pdf_path'], [
            'as' => 'order-invoice'.$data['id'].'.pdf',
            'mime' => 'application/pdf'
        ]);

    });
}





}