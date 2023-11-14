@extends('layouts.app')
@section('content')
    <div class="container mt-5">
        <div class="text-center">
            <div class="col-md-6 p-lg-5 mx-auto my-5">
                <img src="{{asset('img/endodonti.jpg')}}" alt="BackgroundImage" class="img-fluid">
                <h1 class="display-3 fw-bold">Endodonti</h1>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-6 align-items-center">

                <p>
                    Endodontik tedavi; dişlerde oluşan çürük sonucu, kaybolan diş dokusunun çeşitli dolgu yöntemleri ile tamir edilmesidir. Daha ileri aşamalarda dolgu ile tedavi edilemeyen durumlarda kanal tedavisi uygulanarak diş tekrar sağlığına kavuşturulur.
                </p>
            </div>
        </div>
        <div class="container mt-5">
            <div class="row">
                <!-- Sabit Protezler -->
                <div class="col-md-4">
                    <h2>Dolgular</h2>
                    <img src="https://idealclinic.com.tr/wp-content/uploads/2018/09/dis-dolgu.jpg" class="img-fluid" alt="Dolgular">
                    <p>
                        Eskiden beri yapılan metal görünümlü amalgam ya da son zamanlarda adeziv diş hekimliğinin gelişmesiyle kullanılan estetik kompozit restorasyonlar uygulanır.
                    </p>
                </div>

                <!-- Hareketli Protezler -->
                <div class="col-md-4">
                    <h2>Kanal Tedavisi</h2>
                    <img src="https://idealclinic.com.tr/wp-content/uploads/2018/09/kanal-tedavisi.jpg" class="img-fluid" alt="Hareketli Protez">
                    <p>
                        Derin çürükler veya kırık dişlerde, pulpanın iltihaplanması sonucu uygulanır. Lokal anestezi yardımıyla ağrısız gerçekleşen bir veya birkaç seans sürebilir. Kanal tedavisini takiben dolgu ya da kron yapılarak diş fonksiyonuna iade edilir.

                        Dişin tekrar çürümesi ve enfekte olmasını önleyici tedbirler alındıktan sonra kanal tedavili diş ömür boyu kullanılabilir. Bu süreçte düzenli diş hekimi kontrolü şarttır.
                    </p>

                </div>

            </div>
        </div>

    </div>
@endsection
