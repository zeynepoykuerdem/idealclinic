<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        return view('blog',[
            'posts'=>$posts,
        ]);
    }

    public function create()
    {
       // create a new post
    }


    public function store(Request $request)
    {
        //store a new post
    }

    public function show(Post $blogPost)
    {
       return view('blog.show',[
           'post'=>$blogPost,
       ]);
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
