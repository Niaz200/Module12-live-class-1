<?php

namespace App\Models;

use App\Models\InvoiceItem;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Invoice extends Model
{
    use HasFactory;

    // protected $hidden = ['created_at', 'updated_at'];

    public function items(){
        return $this->hasMany(InvoiceItem::class);
    }
}
