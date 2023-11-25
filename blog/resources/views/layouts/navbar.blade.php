<?php
$menu = [
    [
        'url'=>'',
        'title'=>'ANA SAYFA',
    ],
    [
        'url'=>'Hekimlerimiz',
        'title'=>'HEKİMLERİMİZ',
    ],
    [
        'url'=>'Hizmetlerimiz',
        'title'=>'HİZMETLERİMİZ',
    ],
    [
        'url'=>'blog',
        'title'=>'BLOG',
    ],
    [
        'url'=>'İletişim',
        'title'=>'İLETİŞİM',
    ],
];
?>
<div class="bg-white">
    <div class="container ">
        <nav class="navbar navbar-expand-lg" style="--bs-navbar-active-color:#8bc541">
            <div class="container-fluid ">
                <a class="navbar-brand" href="{{ url('/') }}">
                    <img src="{{asset('ideallogo-131x75.png')}}" width="auto" height="60" alt="İdeal Clinic Logo"
                        loading="lazy">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto nav-underline small">
                        @foreach ($menu as $m)
                        <li class="nav-item">
                            <a class="nav-link  {{(request()->segment(1) == $m['url'])?'active':''}}"
                                aria-current="page"
                                href="{{url($m['url'])}}">{{$m['title']}}</a>
                        </li>
                        @endforeach
                    </ul>

                </div>
            </div>
        </nav>
    </div>
</div>
