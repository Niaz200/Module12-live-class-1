<?php

namespace App\Models;

use App\Models\Book;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Author extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function books(){
        // return $this->belongsToMany('App\Models\Book');
        return $this->belongsToMany(Book::class);
    }
}
