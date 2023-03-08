<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Evenement;
use Illuminate\Support\Facades\Session;
class EvenementController extends Controller
{

 
    function addEvent(Request $req)
{
    global $checkData ;
    $event = new Evenement;
    $event->nom_event = $req->input('nom_event');
$filename = $req->input('nom_event') . '.pdf';

    $event->Img = $req->file('file')->storeAs('pdf', $filename);
     $event->save();
     $checkData = 1;
    return $event;
}



function testSession()
{
    // Store a value in the session
    Session::put('test_key', 'test_value');

    // Retrieve the value from the session
    $value = Session::get('test_key');

    // Check if the value was retrieved successfully
    if ($value === 'test_value') {
        return true;
    } else {
        return false;
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
