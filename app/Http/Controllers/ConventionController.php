<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Models\Convention;

class ConventionController extends Controller
{

  function updateCon (Request $req ,$id){
    $con = Convention::find($id);
    if (!$con) {
      return response()->json(['error' => 'Convention not found'], 404);
  }
    $con->Nom_con = $req->input('Nom_con');
    $con->description = $req->input('description');
    $con->date = $req->input ('date');
    $con->save();
   return response()->json(['message' => 'Convention updated successfully']);

  }

    function addCon(Request $req)
    {
        $con = new Convention;
        $con->Nom_con = $req->input('Nom_con');
        $con->description = $req->input('description');
        $con->date = $req->input ('date');
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
