      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<div class="top-header d-block ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-10 col-sm-8 col-md-7 col-lg-4">
                <p class="phone-no float-start"><i class="icon an an-phone me-1"></i>
                   <a href="https://wa.me/{{ preg_replace('/[^0-9]/', '', $_s['phone_number']) }}" target="_blank">
    {{ $_s['phone_number'] }}
</a>

            </div>
            <div class="col-sm-4 col-md-4 col-lg-4 d-none d-md-none d-lg-block">
                <div class="text-center">
                    <p class="top-header_middle-text">{{$_s['topbar_title']}}</p>
                </div>
            </div>
            <div class="col-2 col-sm-4 col-md-5 col-lg-4 text-end d-none d-sm-block d-md-block d-lg-block">
                <div class="header-social">
                    <ul class="justify-content-end list--inline social-icons">
                        @if($_s['facebook_link'])
                        <li>
                            <a class="social-icons__link"
                                href="{{$_s['facebook_link']}}"
                                target="_blank"
                                data-bs-toggle="tooltip"
                                data-bs-placement="bottom"
                                title="Facebook"><i class="icon an an-facebook"></i>
                                <span class="icon__fallback-text">Facebook</span>
                            </a>
                        </li>
                        @endif



@if($_s['instagram_link'])
<li>
    <a class="social-icons__link" href="{{ $_s['instagram_link'] }}" target="_blank" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Instagram">
        <i class="icon an an-instagram"></i>
        <span class="icon__fallback-text">Instagram</span>
    </a>
</li>
@endif
@if($_s['tiktok_link'])
<li>
    <a class="social-icons__link" href="{{ $_s['tiktok_link'] }}" target="_blank" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tiktok">
       <i class="fab fa-tiktok"></i>
        <span class="icon__fallback-text">Instagram</span>
    </a>
</li>
@endif

<!--@if($_s['youtube_link'])-->
<!--<li>-->
<!--    <a class="social-icons__link" href="{{ $_s['youtube_link'] }}" target="_blank" data-bs-toggle="tooltip" data-bs-placement="bottom" title="YouTube">-->
<!--        <i class="icon an an-youtube"></i>-->
<!--        <span class="icon__fallback-text">YouTube</span>-->
<!--    </a>-->
<!--</li>-->
<!--@endif-->


                    </ul>
                </div>
            </div>
            <div class="col-2 col-sm-4 col-md-5 col-lg-4 text-end d-block d-sm-none d-md-none d-lg-none">
                <!-- Mobile User Links -->
                <div class="user-menu-dropdown">
                    {{-- <a href="{{URL::to('/admin/login')}}">
                        <span class="user-menu"><i class="an an-user-alt"></i></span>
                    </a> --}}
                </div>
                <!-- End Mobile User Links -->
            </div>
        </div>
    </div>
</div>
<!-- End Top Header -->
