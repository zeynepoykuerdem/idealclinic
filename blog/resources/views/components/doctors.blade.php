<?php
$doctors = [
    [
        'name'=>'Dr. Esra Zeyrek',
        'job'=>'Laboratuvar Sorumlusu',
        'title'=>'Ağız ve Diş Çene Protezleri Uzmanı',
        'img'=>asset('doctors/ez.png'),
    ],
    [
        'name'=>'Dt. İdiz Hacımüezzin Kubalı',
        'job'=>'',
        'title'=>'Diş Hekimi',
        'img'=>asset('doctors/ihk.png'),
    ],
    [
        'name'=>'Dr. Sinan Çetindağ',
        'job'=>'Klinik Direktörü',
        'title'=>'Ortodonti Uzmanı',
        'img'=>asset('doctors/sc.png'),
    ],
    [
        'name'=>'Dr. Burcu Özmenay',
        'job'=>'',
        'title'=>'Endodonti Uzmanı',
        'img'=>asset('doctors/bo.png'),
    ],
];

?>
<div class="container">
<div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4 my-4 justify-content-center">
    @foreach ($doctors as $i=>$d)
    <div class="position-relative doctor_thumbnail">
        <div class="bg-body-tertiary p-2 text-center" style="height:360px">
            <div style="height:240px">
                <img src="{{$d['img']}}" class="mx-auto rounded-circle doctor_thumbnail" />
            </div>
            <br />
            <span class="text-success">
                {{$d['title']}}
            </span>
            <div class="lead">
                <a href="#{{$i}}" class="stretched-link link-underline link-underline-opacity-0">
                    {{$d['name']}}
                </a>
            </div>
            <small>{{$d['job']}}</small>
        </div>
    </div>
    @endforeach
    
    <style>
        .doctor_thumbnail img {
            transform:scale(.95);
            opacity:.9;
            transition:all .2s;
        }
        .doctor_thumbnail:hover img {
            transform:scale(1);
            opacity:1;
            transition:all .2s;
            border:1px solid black;
        }
    </style>
</div>
</div>
