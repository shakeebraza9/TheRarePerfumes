<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice</title>
    <style>
        body {
            font-family: sans-serif;
        }

        .container {
            width: 720px;
            padding: 20px;
            margin: auto;
        }

        .main-title {
            font-size: 18px;
            font-family: Arial, Helvetica, sans-serif;
            margin: 5px 0px;
        }

        .main-text {
            font-size: 14px;
            font-family: sans-serif;
            margin: 10px 0px
        }

        .logo_details, .company_details {
            width: 48%;
            vertical-align: top;
        }

        .logo_details {
            float: left;
        }

        .company_details {
            float: right;
            text-align: right;
        }

        .logo_details h6, .company_details h6 {
            font-size: 20px;
            font-weight: 600;
            margin: 0px;
            padding: 8px 0px;
        }

        .logo_details p, .company_details p {
            margin: 2px;
            font-size: 14px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        .text-center {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="logo_details">
                <img src="{{ public_path($settings['logo']) }}" alt="Logo" style="width:60px;">
                <h6>Order Details:</h6>
                <p>Order ID: {{ $data->id }}</p>
                <p>Status: {{ $status->title }}</p>
                <p>Date: {{ date('Y-m-d', strtotime($data->created_at)) }}</p>
                <p>Payment via: {{ $data->payment_methods->title }}</p>
                <p>Payment: {{ $data->payment_status }}</p>
                <p>Tracking ID: {{ $data->tracking_id }}</p>
            </div>
            <div class="company_details">
                <h6>Bill From:</h6>
                <p>{{ $settings['site_title'] }}</p>
                <p>{{ $settings['phone_number'] }}</p>
                <p>{{ $settings['email_address'] }}</p>
                <p>{{ $settings['address'] }}</p>
                <h6 style="padding-top: 10px;">Bill To:</h6>
                <p>{{ $data->customer_name }}</p>
                <p>{{ $data->customer_phone }}</p>
                <p>{{ $data->customer_email }}</p>
                <p>{{ $data->country }}, {{ $data->city }}</p>
                <p>{{ $data->address }}</p>
            </div>
        </div>
        <div style="clear: both; padding-bottom: 20px;"></div>
        <table border="1">
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data->children as $item)
                    <?php $attr = json_decode($item->attr); ?>
                    <tr>
                        <td>
                            <p>{{ $item->title }} - ({{ $item->sku }})</p>
                            @if($attr)
                                @foreach ($attr as $key => $att)
                                    <span>{{ $att->attribute_title }}: {{ $att->values_title }}</span> <br>
                                @endforeach
                            @endif
                        </td>
                        <td class="text-center">{{ number_format($item->price, 2) }}</td>
                        <td class="text-center">{{ number_format($item->quantity, 2) }}</td>
                        <td class="text-center">{{ number_format($item->total, 2) }}</td>
                    </tr>
                @endforeach
                <tr>
                    <td style="border-right: none;"></td>
                    <td style="border-left: none;"></td>
                    <th class="text-center">Subtotal</th>
                    <td class="text-center">{{ number_format($data->subtotal, 2) }}</td>
                </tr>
                <tr>
                    <td style="border-right: none;"></td>
                    <td style="border-left: none;"></td>
                    <th class="text-center">Delivery Charges</th>
                    <td class="text-center">{{ number_format($data->delivery_charges, 2) }}</td>
                </tr>
                <tr>
                    <td style="border-right: none;"></td>
                    <td style="border-left: none;"></td>
                    <th class="text-center">Grand Total</th>
                    <td class="text-center">{{ number_format($data->grandtotal, 2) }}</td>
                </tr>
            </tbody>
        </table>
        <div style="padding-top: 10px;">
            <h6 class="main-title">Notes:</h6>
            <p>{{ $data->order_notes }}</p>
        </div>
    </div>
</body>
</html>