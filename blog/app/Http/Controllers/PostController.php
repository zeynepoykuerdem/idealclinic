<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Livewire\WithPagination;

class PostController extends Controller
{
    use WithPagination;
    public $page=5;
    // livewire ekleyerek search elde et
    //livewire da readmore butonuna tiklayarak postu gor
    public function index(Request $request)
    {
        $search = $request->input('search');


        $posts = Post::when($search, function ($query, $search) {
            return $query
                ->where('post_basligi', 'like', '%' . $search . '%')
                ->orWhere('metin', 'like', '%' . $search . '%')
                ->orWhereHas('tags', function ($tagQuery) use ($search) {
                    $tagQuery->where('name', 'like', '%' . $search . '%');

                });


        })->paginate(10);

        return view('blog', compact('posts', 'search'));
    }

    public function create()
    {
       // create a new post
    }


    public function store(Request $request)
    {
    }

    public function show($id)
    {
       $post=Post::find($id);
       return view('blog.show', compact('post'));
    }


    public function edit(Post $blogPost)
    {
        //show form to edit the post
    }


    public function update(Request $request, Post $blogPost)
    {
        //save the edited post
    }


    public function destroy(Post $blogPost)
    {
        //delete a post
    }
}
