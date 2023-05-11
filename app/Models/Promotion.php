<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Promotion extends Model
{
    use HasFactory;
    protected $fillable = [
        'nom_promo',
        'promo_img',
        'date_deb',
        'date_fin',
    ];


    public $timestamps = false;

}
