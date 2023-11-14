@extends('layouts.app')
@section('content')
    <div class="container">
        <form action="{{ route('blog.index') }}" method="GET" class="d-flex" >
            <div class="w-3/6 mx-1 flex-grow">
                <input type="text" name="search" value="{{ $search }}" placeholder="Search the post..."
                       class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
            </div>
            <button type="submit" class="btn btn-light m">Search</button>
        </form>
        <div class="container">
            @foreach($posts as $post)
                <div class="card mb-4 ">
                    <div class="post-image-container">
                        <img src="{{$post->post_foto}}" class="card-img-top" alt="{{ $post->title }}">
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
        @if ($posts->previousPageUrl())
            <a href="{{ $posts->previousPageUrl() }}" rel="prev">Previous</a>
        @endif

        @if ($posts->nextPageUrl())
            <a href="{{ $posts->nextPageUrl() }}" rel="next">Next</a>
        @endif


    </div>
@endsection

