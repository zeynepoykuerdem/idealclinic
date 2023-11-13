<!-- resources/views/navbar.blade.php -->

<div class="container-fluid bg-white">
    <div class="container">
        <nav class="navbar navbar-expand-lg ">
            <div class="container-fluid">
                <a class="navbar-brand" href="{{ url('/') }}">
                    <img src="{{asset('img/ideal%20dental%20clinic.svg')}}" alt="logo" height="50" loading="lazy">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link {{ Request::is('/') ? 'active' : '' }}" aria-current="page" href="{{ '/Anasayfa'}}">Anasayfa</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle {{ Request::is('services*') ? 'active' : '' }}" href="{{ url('/Hizmetlerimiz') }}" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Hizmetlerimiz
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="{{ url('/Hizmetlerimiz') }}">Hizmetlerimiz</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Ağız-Diş ve Çene Cerrahisi') }}">Ağız-Diş ve Çene Cerrahisi</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Eklem Rahatsızlıkları') }}">Eklem Rahatsızlıkları</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Endodenti') }}">Endodenti</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Estetik Diş Hekimliği') }}">Estetik Diş Hekimliği</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Genel Anestezi Uygulamaları') }}">Genel Anestezi Uygulamaları</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Ortodonti') }}">Ortodonti</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Pedodonti') }}">Pedodonti</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Periodontoloji') }}">Periodontoloji</a></li>
                                <li><a class="dropdown-item" href="{{ url('/Protetik Diş Tedavisi (Protez) ') }}">Protetik Diş Tedavisi (Protez) </a></li>
                                <!-- Add other service links here -->
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ Request::is('blog') ? 'active' : '' }}" href="{{ url('/blog') }}">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ Request::is('İletişim') ? 'active' : '' }}" href="{{ url('/İletişim') }}">İletişim</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search" action="/search" method="post">
                        <input class="form-control me-2" type="text" placeholder="Search" aria-label="Search" name="search_query">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
</div>
