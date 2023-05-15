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
        $promo->date_deb = $req->input('date_deb');
        $promo->date_fin = $req->input('date_fin');
         $promo->save();
        return $promo;
    }

    function listPromo (){
       $promo = Promotion::all();
        return $promo;
    }

    function UpdatePromo (Request $req ,$id){
      $promo = Promotion::find($id);
      $promo->nom_promo = $req->input('nom_promo');
      if ($req->hasFile('file')) {
        $file = $req->file('file');
        if (!$file->isValid()) {
            return response()->json(['error' => 'File is not valid'], 400);
        }
        $filename = $req->input('nom_promo') . '.pdf';
        $promo->promo_img = $file->storeAs('pdf', $filename);
    }
          $promo->date_deb = $req->input('date_deb');
          $promo->date_fin = $req->input('date_fin');
           $promo->save();
           return response()->json(['message' => 'Promotion updated successfully'], 200);
    }

   

    function delPromo ($id){
        $res =Promotion::where('id_promo',$id)->delete();
        if ($res){
          return ["result"=> "promo has been delete"];
  
        }else {
          return ["result"=> "delete failed"];
        }
          return $id;
      }


    
}
