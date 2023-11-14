@extends('layouts.app')
@section('content')
    <div class="container">
        <h1>{{ $post->post_basligi }}</h1>
        <p>{{ $post->metin }}</p>
        <img src="{{$post->post_foto}}" class="card-img-top" alt="{{ $post->title }}">

        <h4>Tags:</h4>
        <ul>
            @foreach ($post->tags as $tag)
                <li>{{ $tag->name }}</li>
            @endforeach
        </ul>
    </div>

@endsection

