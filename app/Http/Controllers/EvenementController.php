<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Evenement;

class EvenementController extends Controller
{
    function addEvent(Request $req)
{
    $event = new Evenement;
    $event->nom_event = $req->input('nom_event');
$filename = $req->input('nom_event') . '.pdf';

    $event->Img = $req->file('file')->storeAs('pdf', $filename);
   
   
    $inserted  = $event->save();
    $event = $event->save();
    return $event;
}


function check($inserted){
  if ($inserted){
    return $inserted;
    $inserted =null;
  }
}
    function listEvent(){
        return Evenement::all();
    }

    function delEvent ($id){
      $res =Evenement::where('id_event',$id)->delete();
      if ($res){
        return ["result"=> "Event has been delete"];

      }else {
        return ["result"=> "delete failed"];
      }
        return $id;
    }
}
