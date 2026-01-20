<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Date</th>
            <th>Customer</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Order Status</th>
            <th>Payment Method</th>
            <th>Payment Status</th>
            <th>Total</th>
            <th>Products</th>
        </tr>
    </thead>

    @php
    $statusList = [
        1 => 'Pending',
        2 => 'Approved',
        3 => 'Cancel',
        5 => 'Delivery Process',
        6 => 'Complete',
    ];

    $paymentMethods = [
        2 => 'Cash on Delivery',
        3 => 'Online',
        4 => 'Credit Card'
    ];
    @endphp

    <tbody>
        @foreach($orders as $order)
            <tr>
                <td>{{ $order->id }}</td>
                <td>{{ $order->created_at->format('Y-m-d') }}</td>
                <td>{{ $order->customer_name }}</td>
                <td>{{ $order->customer_email }}</td>
                <td>{{ $order->customer_phone }}</td>
                <td>{{ $order->address }}</td>
                <td>{{ $statusList[$order->order_status] ?? 'Unknown' }}</td>
                <td>{{ $paymentMethods[$order->payment_method] ?? 'N/A' }}</td>
                <td>{{ $order->payment_status }}</td>
                <td>{{ $order->grandtotal }}</td>
                <td>
                    {{ $order->orderItems->map(function($item) {
                        return $item->title . ' (' . $item->sku . ' x ' . $item->quantity . ')';
                    })->implode(', ') }}
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
