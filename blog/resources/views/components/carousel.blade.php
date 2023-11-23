<?php
$items = [
1=>[
    'image'=>Storage::url('slider/slide-1.jpg'),
    'html'=>'<h1 class="text-primary">SAĞLIKLI DİŞLER</h1>',
    'url'=>'hizmetlerimiz',
    'time'=>5000,
],
2=>[
    'image'=>Storage::url('slider/slide-2.jpg'),
    'html'=>'<h1 class="text-success">BEMBEYAZ GÜLÜŞLER</h1>',
    'url'=>'hizmetlerimiz',
    'time'=>2000,
],
0=>[
    'image'=>Storage::url('slider/slide-3.jpg'),
    'html'=>'<img src="' . asset('ideallogo.png') . '" width="75%" height="auto" />',
    'url'=>'hizmetlerimiz',
    'time'=>3000,
],

];
?>
<div id="carouselMain" class="carousel slide carousel-fade" data-bs-theme="dark" data-bs-ride="carousel">
    <div class="carousel-inner">
        @foreach ($items as $i=>$item)
      <div class="carousel-item {{($i==0)?'active':''}}" data-bs-interval="{{$item['time']}}">
        <img src="{{$item['image']}}" class="img-fluid object-fit-cover" style="min-height:30vh;max-height:60vh;width:100%" alt="...">
        <div class="carousel-caption h-100 row row-cols-2 align-items-center">
            <div>
                
            </div>
            <div>
            {!! $item['html'] !!}
            </div>
        </div>
      </div>
      @endforeach
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselMain" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselMain" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
</div>
