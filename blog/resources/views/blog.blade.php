
@extends('layouts.app')
@section('content')
    <div class="container">

        @foreach($posts as $post)
            <div class="card mb-4 ">
                <div class="post-image-container">
                <img src= "{{$post->post_foto}}" class="card-img-top" alt="{{ $post->title }}">
                </div>
                <div class="card-body">
                    <h2 class="card-title">{{ $post->post_basligi }}</h2>
                    <p class="card-text">{{ $post->metin }}</p>
                    <a href="{{ route('blog.show', $post->id) }}" class="btn btn-outline-secondary ">Read More</a>
                </div>
                <div class="card-footer text-muted">
                    Published on {{ $post->yayınlanma_tarihi }} by {{ $post->yazar }}
                </div>
            </div>
        @endforeach
    </div>
@endsection

