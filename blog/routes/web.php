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

Route::get('/Hizmetlerimiz',function (){
    return view('hizmetlerimiz');
});
Route::get('/İletişim',function (){
    return view('iletişim');
});
Route::get('/Hekimlerimiz',function (){
    return view('hekimlerimiz');
});
Route::view('/Ağız-Diş ve Çene Cerrahisi', 'Hizmetlerimiz/AğızDişÇeneC')->name('service.AğızDişÇeneC');
Route::view('/Eklem Rahatsızlıkları', 'Hizmetlerimiz/EklemRahatsızlıkları')->name('service.EklemRahatsızlıkları');
Route::view('/Endodenti', 'Hizmetlerimiz/Endodenti')->name('service.endo');
Route::view('/Estetik Diş Hekimliği', 'Hizmetlerimiz/EstetikDişH')->name('service.est');
Route::view('/Genel Anestezi Uygulamaları', 'Hizmetlerimiz/GenelAnesteziU')->name('service.gau');
Route::view('/Ortodonti', 'Hizmetlerimiz/Ortodonti')->name('service.ort');
Route::view('/Pedodonti', 'Hizmetlerimiz/Pedodonti')->name('service.pedo');
Route::view('/Periodontoloji', 'Hizmetlerimiz/Periodontoloji')->name('service.perio');
Route::view('/Protetik Diş Tedavisi (Protez)', 'Hizmetlerimiz/Protez')->name('service.protez');

Route::get('/search', 'SearchController@index');
Route::post('/search', 'SearchController@search');



Route::fallback(function() {
    return view('anasayfa');
});
