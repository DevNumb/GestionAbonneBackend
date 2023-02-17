<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Models\Convention;

class ConventionController extends Controller
{

    
    function listConvention(){
        return Convention::all();
    }
}
