<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Historique;



class HistoriqueController extends Controller
{
    function listHistorique(){
        return Historique::all();
 
     }
  function uploadUser(Request $req){
     $History = new Historique;
     $History->id = $req->input("id");
     $History->firstname = $req->input ("firstname");
     $History->lastname = $req->input ("lastname");
     $History->gender = $req->input ("gender");
     $History->username = $req->input ("username");
     $History->email = $req->input ("email");
     $History->options = $req->input ("options");
     $History->save();
     return $History;
  }
     function search($key){
        return Historique::where('username','Like',"%$key%")->get();
     }
}
