@extends('layouts.app')
@section('content')
    @php
        use Illuminate\Support\Str;
    @endphp

    <?php
    $hizmetlerimiz = [
        [
            'name' => 'Ağız-Diş ve Çene Cerrahisi',
            'text' => 'Diş İmplantları İmplant Nedir? Eksik olan dişlerin yerine, çene kemiğine
                            yerleştirilen, titanyumdan yapılmış vidalardır. Küçük cerrahi bir işlemle çene
                            kemiğine...',
            'img' => asset('img/ağız-diş-ve-çene-cerrahisi.jpg'),
        ],
        [
            'name'=>'Protetik Diş Tedavisi',
            'text'=>'Halk arasında porselen diş, kuron, köprü, çivi diş, takma diş, damak,
                                kancalı diş diye tabir edilen, hepimizin duyduğu bu terimlerin...',
            'img'=>asset('img/protetik-diş-tedavisi.jpg'),

        ],
        [
            'name'=>'Endodonti',
            'text'=>'Endodontik tedavi; dişlerde oluşan çürük sonucu, kaybolan diş dokusunun
                                çeşitli dolgu yöntemleri ile tamir edilmesidir. Daha ileri aşamalarda dolgu ile...',
            'img'=>asset('img/endodonti.jpg'),
        ],
        [
             'name'=>'Pedodonti',
            'text'=>'Fissür örtücüler Süt ve sürekli azı dişlerin çiğneyici yüzeyleri tüberkül
                                ve fissür denilen tepecik ve çukurlardan oluşur. Fissür örtücüler süt...',
            'img'=>asset('img/pedodonti.jpg'),
        ],
        [
             'name'=>'Ortodonti',
            'text'=>'Ortodontik tedavi, bozuk olan ağız ve diş yapısının düzeltilmesidir. Sadece
                                diş bozukluklarının değil, yüz, profil, çene kemiklerinin armonisini de kapsamaktadır.
                                Bu...',
            'img'=>asset('img/ortodonti.jpg'),
        ],
        [
            'name'=>'Periodontoloji',
            'text'=>'Sağlıklı dişeti; açık pembe renkli, mat, yüzeyi portakal kabuğu gibi
                                pütürlü ve sert kıvamlıdır. Sağlıklı dişeti, fırçalama veya dokunma ile...',
            'img'=>asset('img/periodontoloji.jpg')
        ],

        [
            'name' => 'Estetik Diş Hekimliği',
            'text' => 'Gülüş Estetiği Kişinin yüz özelliklerini göz önüne alarak bireye özel en
                    güzel gülüşün tasarlanmasıdır. Sadece diş beyazlatma ile tedavi olabileceği...',
            'img' => asset('img/estetik-diş-hekimliği-1.jpg'),
        ],
        [
            'name' => 'Genel Anestezi Uygulamaları',
            'text' => 'Genel anestezi ya da sedasyon altında diş tedavileri Genel anestezi,
            hastaya damar içi ilaçlar ve bayıltıcı gaz verilerek, ameliyathanede, tamamen...',
            'img' => asset('img/genel-anestezi-1.jpg'),
        ],
        [
            'name' => 'Eklem Rahatsızlıkları',
            'text' => 'Bruksizm Çene eklem ağrısına yol açan diş gıcırdatma ve diş sıkma
            alışkanlığı için kullanılan bir terimdir. Hastalar genellikle gece uykuda...',
            'img' => asset('img/eklem-rahatsızlıkları.jpg'),
        ],


    ]
    ?>
    <!-- Album card-->
    <div class="container">
        <div class="row mt-4">
            @foreach($hizmetlerimiz as $h => $d)
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="card h-100 w-100 row-spacing">
                        <img src="{{ $d['img'] }}" class="card-img-top" alt="{{ $d['name'] }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $d['name'] }}</h5>
                            <p class="card-text">{{ $d['text'] }}</p>
                            <a href="#" class="btn btn-outline-secondary">Detaylı Bilgi</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
            <style>
                .card img {
                    transform:scale(.95);
                    opacity:.9;
                    transition:all .2s;
                }
                .card:hover img {
                    transform:scale(1);
                    opacity:1;
                    transition:all .2s;

                }


            </style>
        </div>
    </div>
@endsection
