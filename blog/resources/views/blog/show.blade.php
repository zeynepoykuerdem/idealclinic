@extends('layouts.app')
@section('content')
    <div class="container mt-4">
        <div class="row">
            <div class="col-lg-8">
                <h1 class="mb-4">{{ $post->post_basligi }}</h1>
                <img src="{{ $post->post_foto }}" class="img-fluid mb-4" alt="{{ $post->title }}">
                <p class="lead" style="font-size: 16px">{{ $post->metin }}</p>
                <h4 class="mt-4">Tags:</h4>
                <ul class="list-inline">
                    @foreach ($post->tags as $tag)
                        <li class="list-inline-item">{{ $tag->name }}</li>
                    @endforeach
                </ul>
            </div>
        </div>


    </div>
@endsection


