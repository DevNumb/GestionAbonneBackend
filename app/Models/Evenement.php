<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Evenement extends Model
{
    use HasFactory;
    protected $fillable = [
        'nom_event',
        'Img',
        'date_db',
        'date_df',
        'Type',
       

    ];

    
    public $timestamps = false;
}
