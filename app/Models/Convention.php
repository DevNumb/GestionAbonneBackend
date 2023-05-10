<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Convention extends Model
{
    use HasFactory;
    protected $primaryKey = 'id_con';
    protected $fillable = [
        'Nom_con', 
        'description',
        'date',
    ];

    public $timestamps = false;
}

