<?php

namespace App\Models;

use App\Models\Author;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Book extends Model
{
    use HasFactory;


    protected $fillable = ['title'];

    public function authors(){
        // return $this->belongsToMany('App\Models\Author');
        return $this->belongsToMany(Author::class);
    }
}
