@extends('layouts.app')
@section('content')

<x-carousel />


<?php
$items = [
    [
        'title'=>'UZMAN HEKİMLER',
        'text'=>'Alanında uzman hekimlerimiz ile güvenilir tedavi',
        'img'=>asset('img/icons/icon1.png'),
    ],
    [
        'title'=>'ÜST KALİTE EKİPMAN',
        'text'=>'Son tedavi teknolojileriyle kaliteli hizmet',
        'img'=>asset('img/icons/icon2.png'),
    ],
    [
        'title'=>'KONFORLU TEDAVİ',
        'text'=>'Arkanıza yaslanın ve ağız sağlığınızı hekimlerimize bırakın',
        'img'=>asset('img/icons/icon3.png'),
    ],
    [
        'title'=>'GÜLERYÜZLÜ HİZMET',
        'text'=>'Tedavinizden mutlu ayrılın',
        'img'=>asset('img/icons/icon4.png'),
    ],
];
?>
<div class="container my-4 py-4">
    <div class="row row-cols-2 row-cols-lg-4 g-4">
        @foreach ($items as $item)
        <div class="text-center">
            <img src="{{$item['img']}}" width="62" height="66" />
            <br />
            <br />
            <h4>{{$item['title']}}</h4>
            {!! $item['text'] !!}
        </div>
        @endforeach
    </div>
</div>

<div class="bg-light py-4">
    <div class="container my-4 py-4">
        <h3 class="text-center">HAKKIMIZDA</h3>
        <div class="row row-cols-1 row-cols-md-2 g-4 mt-4">
            <div>
                <img src="{{asset('img/hakkimizda_icon.jpg')}}" class="img-fluid float-end" />
            </div>
            <div class="lead my-auto lh-lg">
                İdeal Ağız ve Diş Sağlığı polikliniği 1996 yılında, dönemin Cumhurbaşkanı Süleyman Demirel tarafından açılmıştır.
                Koşulsuz hasta memnuniyetinin temel ilke olarak ele alındığı İdeal Diş Kliniği, deneyimli kadrosu ile hastalarına
                huzurlu ve rahat bir ortam sunar.
            </div>
        </div>
    </div>
</div>


<x-doctors />



    <div class="container-lg  d-none">
        <div id="carouselExampleControls" class="carousel slide my-4 " data-bs-ride="true">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100"
                        src="https://ld-wp73.template-help.com/wordpress/prod_23278/v2/wp-content/uploads/2019/03/slide-1.jpg"
                        >
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100"
                        src="https://ld-wp73.template-help.com/wordpress/prod_23278/v2/wp-content/uploads/2019/03/slide-3.jpg"
                        >
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100"
                        src="https://ld-wp73.template-help.com/wordpress/prod_23278/v2/wp-content/uploads/2019/03/slide-2.jpg"
                        >
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!--card-->
        <!--icon bul-->
        <section class="card-section my-5 ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <img class="bd-placeholder-img rounded-circle" src="{{asset('img/uzmanhekımler.webp')}}" width="62"
                             height="66"
                             alt="Uzman Hekimler">
                        <h5 class="fw-normal">Uzman Hekimler</h5>
                        <p>Alanında uzman hekimlerimiz ile güvenilir tedavi</p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-3">
                        <img class="bd-placeholder-img rounded-circle" src="{{asset('img/üstkaliteekipmanlar.webp')}}" width="62"
                             height="66"
                             alt="Üst Kalite Ekipman">
                        <h5 class="fw-normal">Üst Kalite Ekipman</h5>
                        <p>Son tedavi teknolojileriyle kaliteli hizmet</p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-3">
                        <img class="bd-placeholder-img rounded-circle" src="{{asset('img/konforlutedavi.webp')}}" width="62"
                             height="66"
                             alt="Konforlu Tedavi">
                        <h5 class="fw-normal">Konforlu Tedavi</h5>
                        <p>Arkanıza yaslanın ve ağız sağlığınızı hekimlerimize bırakın</p>
                    </div>
                    <div class="col-lg-3">
                        <img class="bd-placeholder-img rounded-circle" src="{{asset('img/güleryüzlü%20hizmet.webp')}}" width="62"
                             height="66"
                             alt="Güleryüzlü Hizmet">
                        <h5 class="fw-normal">Güleryüzlü Hizmet</h5>
                        <p>Tedavinizden mutlu ayrılın</p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->
            </div>
        </section>
        <!--end of card-->
        <!--about us-->
        <section class="about-section my-5 bg-white-smoke">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col">
                        <!-- another image can be inserted here -->
                        <img src="img/diş-kliniği.png" alt="Dental Clinic" class="rounded-circle " />
                    </div>
                    <div class="col">
                        <h2>Hakkımızda</h2>
                        <p>İdeal Ağız ve Diş Sağlığı polikliniği 1996 yılında, dönemin Cumhurbaşkanı Süleyman Demirel
                            tarafından
                            açılmıştır. Koşulsuz hasta memnuniyetinin temel ilke olarak ele alındığı İdeal Diş Kliniği,
                            deneyimli
                            kadrosu ile hastalarına huzurlu ve rahat bir ortam sunar.</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="sevices-section my-5" id="services">
            <div class="container px-4 py-5 text-center" id="icon-grid">
                <h2 class="mb-4">Hizmetlerimiz</h2>

                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 py-5">
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="AğızveDişC.html"
                                                                                class="services-section-link">Ağız -
                                    Diş ve Çene Cerrahisi</a></h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="Protez.html"
                                                                                class="services-section-link">Protetik
                                    Diş Tedavisi ( Protez )</a>
                            </h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="Endodenti.html"
                                                                                class="services-section-link">Endodonti</a>
                            </h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="Pedodonti.html"
                                                                                class="services-section-link">Pedodonti</a>
                            </h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="Ortodonti.html"
                                                                                class="services-section-link">Ortodonti</a>
                            </h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="Periodontoloji.html"
                                                                                class="services-section-link">Periodontoloji</a>
                            </h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="EstetikDişH.html"
                                                                                class="services-section-link">Estetik
                                    Diş Hekimliği</a></h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="GenelAnesteziUyg.html"
                                                                                class="services-section-link">Genel
                                    Anestezi Uygulamaları</a></h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em">>
                        </svg>
                        <div>
                            <h6 class="fw-bold mb-0 fs-4 text-body-emphasis"><a href="EklemRahatsızlıkları.html"
                                                                                class="services-section-link">Eklem
                                    Rahatsızlıkları</a></h6>
                            <p>Paragraph of text beneath the heading to explain the heading.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--hizmetler kismindaki gibi doktorlari ekle-->

    </div>
@endsection
