<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Evenement;

class EvenementController extends Controller
{
    function addEvent(Request $req)
    {
        $Event = new Evenement;
        $Event->nom_event = $req->input('nom_event');
        $Event->Img = $req->file('file')->store('Event');
        $Event->save();
        return $Event;
    }
    function listEvent(){
        return Evenement::all();
    }
}
