@if ($paginator->hasPages())
    <ul class="pager">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
            <li class="disabled"><span>← Previous</span></li>
        @else
            <li>
                <a href="{{ $paginator->previousPageUrl() }}&{{ http_build_query(request()->except('page')) }}" rel="prev">← Previous</a>
            </li>
        @endif

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <li class="disabled"><span>{{ $element }}</span></li>
            @endif

            {{-- Array of Links --}}
            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @php
                        $fullUrl = $url . '&' . http_build_query(request()->except('page'));
                    @endphp

                    @if ($page == $paginator->currentPage())
                        <li class="active my-active"><span>{{ $page }}</span></li>
                    @else
                        <li><a href="{{ $fullUrl }}">{{ $page }}</a></li>
                    @endif
                @endforeach
            @endif
        @endforeach

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <li>
                <a href="{{ $paginator->nextPageUrl() }}&{{ http_build_query(request()->except('page')) }}" rel="next">Next →</a>
            </li>
        @else
            <li class="disabled"><span>Next →</span></li>
        @endif
    </ul>
@endif
