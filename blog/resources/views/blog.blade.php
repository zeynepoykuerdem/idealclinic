@extends('layouts.app')
@section('content')
    <div class="container">
        <form action="{{ route('blog.index') }}" method="GET" class="d-flex">
            <div class="w-3/6 mx-1 flex-grow">
                <label>
                    <input type="text" name="search" value="{{ $search }}" placeholder="Search the post..."
                           class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
                </label>
            </div>
            <button type="submit" class="btn btn-light m">Search</button>
        </form>
        <div class="row mt-4">
            @foreach($posts as $post)
                <div class="col-md-6 col-lg-4 mb-4 ">
                    <div class="card h-100 shadow-sm ">
                        <img src="{{$post->post_foto}}" class="card-img-top " alt="{{ $post->title }}">
                        <div class="card-body">
                            <h5 class="card-title" style="border: black">{{ $post->post_basligi }}</h5>
                            <p class="card-text">{{ Str::limit($post->metin, 150) }}</p>
                            <div class="row">
                                <div class="col-sm-5 col-md-6">
                                    <a href="{{ route('blog.show', $post->id) }}" class="btn btn-outline-secondary ">Okumaya
                                        devam et</a>
                                </div>

                                <div class="text-muted col-sm-5 offset-sm-2 col-md-6 offset-md-0">
                                    Published on {{ $post->yayınlanma_tarihi }} by {{ $post->yazar }}
                                </div>
                            </div>
                        </div>
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

