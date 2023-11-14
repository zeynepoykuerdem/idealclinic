<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $fillable=[
        'post_basligi',
        'metin',
        'yayınlanma_tarihi',
        'post_foto',
        'yazar'
    ];
    //search methodu isimlerine gore arat
    //taglerine gore arat
    public function tags(){
        return $this->belongsToMany(Tag::class);
    }

}
