@php
    $currentQuery = request()->except(['collection', 'stock']); // exclude current filter keys
@endphp

<div class="sidebar_widget filterBox categories filter-widget">
    <div class="widget-title"><h2>Collections</h2></div>
    <div class="widget-content">
        <ul class="sidebar_categories">
            @foreach($collections as $collection)
                @php
                    $collectionUrl = url('/shop') . '?' . http_build_query(array_merge($currentQuery, ['collection' => $collection->slug]));
                @endphp
                <li class="level1">
                    <a href="{{ $collectionUrl }}" 
                       class="site-nav {{ request('collection') == $collection->slug ? 'active' : '' }}" 
                       data-link="collection" 
                       data-slug="{{ $collection->slug }}">
                        {{ $collection->title }}
                    </a>
                </li>
            @endforeach
        </ul>
    </div>
</div>

<div class="sidebar_widget filterBox categories filter-widget">
    <div class="widget-title"><h2>Stock</h2></div>
    <div class="widget-content">
        <ul class="sidebar_categories">
            @php
                $inStockUrl = url('/shop') . '?' . http_build_query(array_merge($currentQuery, ['stock' => 'in']));
                $outStockUrl = url('/shop') . '?' . http_build_query(array_merge($currentQuery, ['stock' => 'out']));
            @endphp
            <li class="level1">
                <a href="{{ $inStockUrl }}" 
                   class="site-nav {{ request('stock') == 'in' ? 'active' : '' }}" 
                   data-link="stock" 
                   data-slug="in">
                    In Stock
                </a>
            </li>
            <li class="level1">
                <a href="{{ $outStockUrl }}" 
                   class="site-nav {{ request('stock') == 'out' ? 'active' : '' }}" 
                   data-link="stock" 
                   data-slug="out">
                    Out of Stock
                </a>
            </li>
        </ul>
    </div>
</div>
