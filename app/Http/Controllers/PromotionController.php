<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Models\Promotion;

class PromotionController extends Controller
{
    function addPromo(Request $req)
    {
        $promo = new Promotion;
        $promo->nom_promo = $req->input('nom_promo');
    $filename = $req->input('nom_promo') . '.pdf';
    
        $promo->promo_img = $req->file('file')->storeAs('Event', $filename);
         $promo->save();
        return $promo;
    }

    function listPromo (){
       $promo = Promotion::all();
        return $promo;
    }
}
