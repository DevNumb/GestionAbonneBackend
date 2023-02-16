<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Historique;



class HistoriqueController extends Controller
{
    function listHistorique(){
        return Historique::all();
 
     }
   
     function search($key){
        return Historique::where('username','Like',"%$key%")->get();
     }
}
