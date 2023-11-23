<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('anasayfa');
});

Route::get('/blog', [\App\Http\Controllers\PostController::class,'index'])->name('blog.index');

Route::get('/blog/show/{post}', [\App\Http\Controllers\PostController::class, 'show'])->name('blog.show');


Route::get('/Anasayfa',function (){
    return view('anasayfa');
});
Route::get('/Hizmetlerimiz',function (){
    return view('hizmetlerimiz');
});
Route::get('/İletişim',function (){
    return view('iletişim');
});
Route::view('/Ağız-Diş ve Çene Cerrahisi', 'Hizmetlerimiz/AğızDişÇeneC');
Route::view('/Eklem Rahatsızlıkları', 'Hizmetlerimiz/EklemRahatsızlıkları');
Route::view('/Endodenti', 'Hizmetlerimiz/Endodenti');
Route::view('/Estetik Diş Hekimliği', 'Hizmetlerimiz/EstetikDişH');
Route::view('/Genel Anestezi Uygulamaları', 'Hizmetlerimiz/GenelAnesteziU');
Route::view('/Ortodonti', 'Hizmetlerimiz/Ortodonti');
Route::view('/Pedodonti', 'Hizmetlerimiz/Pedodonti');
Route::view('/Periodontoloji', 'Hizmetlerimiz/Periodontoloji');
Route::view('/Protetik Diş Tedavisi (Protez)', 'Hizmetlerimiz/Protez');

Route::get('/search', 'SearchController@index');
Route::post('/search', 'SearchController@search');



Route::fallback(function() {
    return view('anasayfa');
});