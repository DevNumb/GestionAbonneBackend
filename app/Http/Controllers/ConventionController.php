<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Models\Convention;

class ConventionController extends Controller
{


    function addCon(Request $req)
    {
        $con = new Convention;
        $con->Nom_con = $req->input('Nom_con');
        $con->description = $req->input('description');
        $con->save();
        return $con;
    }
    
    function listConvention(){
        return Convention::all();
    }

    function DelConvention ($id){
        $res =Convention::where('id_con',$id)->delete();
        if ($res){
          return ["result"=> "Convention has been delete"];
  
        }else {
          return ["result"=> "delete failed"];
        }
    }
}
