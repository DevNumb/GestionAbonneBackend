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
   
   
    $event->save();
    return $event;
}
    function listEvent(){
        return Evenement::all();
    }
}
