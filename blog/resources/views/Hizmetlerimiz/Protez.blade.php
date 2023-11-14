@extends('layouts.app')
@section('content')
    <div class="container mt-5">
        <div class="text-center">
            <div class="col-md-6 p-lg-5 mx-auto my-5">
                <img src="{{asset('img/protetik-diş-tedavisi.jpg')}}" alt="BackgroundImage" class="img-fluid">
                <h1 class="display-3 fw-bold">Protetik Diş Tedavisi ( Protez )</h1>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-6 align-items-center">
                <p>
                    Halk arasında porselen diş, kuron, köprü, çivi diş, takma diş, damak, kancalı diş diye tabir edilen, hepimizin duyduğu bu terimlerin hepsi, bu branşın hizmetleridir.

                    Eksik dişlerin neden olduğu, ortodonti ile tedavi olmayan, fonksiyonel ve estetik bozuklukların düzenlenmesinde kullanılan, diş hekimliğinin en büyük ve geniş kapsamlı branşıdır.

                    Estetik diş hekimliğinde yaygın olarak kullanılan lamina kaplama, zirkonyum porselenler, empress porselenler yani kısacası metalsiz porselenleri de içinde barındırır.

                    Protezi öncelikle 3 bölümde inceleyebiliriz:
                </p>
            </div>
        </div>
        <div class="container mt-5">
            <div class="row">
                <!-- Sabit Protezler -->
                <div class="col-md-4">
                    <h2>Sabit Protezler</h2>
                    <ul>
                        <li>Kronlar - Köprüler</li>
                        <li>Metalsiz Estetik Protezler</li>
                        <li>Post Core (Dişin kökünün içine çivi uygulanması) Protezler</li>
                    </ul>
                    <img src="https://idealclinic.com.tr/wp-content/uploads/2018/09/sabit-protez.jpg" class="img-fluid" alt="Sabit Protez">
                </div>

                <!-- Hareketli Protezler -->
                <div class="col-md-4">
                    <h2>Hareketli Protezler</h2>
                    <ul>
                        <li>Tam Protezler</li>
                        <li>Bölümlü Protezler</li>
                        <li>Hassas Tutuculu Protezler</li>
                        <li>Overdenture Protezler</li>
                    </ul>
                    <img src="https://idealclinic.com.tr/wp-content/uploads/2018/09/hareketli-protez.jpg" class="img-fluid" alt="Hareketli Protez">
                </div>

                <!-- İmplant Protezler -->
                <div class="col-md-4">
                    <h2>İmplant Protezler</h2>
                    <ul>
                        <li>İmplant Üstü Hareketli Protezler</li>
                        <li>İmplant Üstü Sabit Protezler</li>
                    </ul>
                    <img src="https://idealclinic.com.tr/wp-content/uploads/2018/09/implant-protez.jpg" class="img-fluid" alt="İmplant Protez">
                </div>
            </div>
        </div>

    </div>
@endsection
