<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
class UserController extends Controller
{
    function register(Request $req ){
      
        
        
        $user = new User;
        $user->firstname = $req->input ("firstname");
        $user->lastname = $req->input ("lastname");
        $user->gender = $req->input ("gender");
        $user->username = $req->input ("username");
        $user->email = $req->input ("email");
        $user->password= Hash::make($req->input("password" ));
    
        $user->save();
        return $user;
    }
    function login(Request $req){
        $user = User::where('email' , $req->email)->first();
        if (!$user || !Hash ::check ($req->password,$user->password))
        {
            return "error problem with pass or email";
        }
        return $user;
    }

    function list(){
       return User::all();

    }

    function options (Request $req){
        
         User::where('id', $req->input("id"))->update(['options' => 'Admin']);
         $user = User::find($req->input("id")); 
        return $user;
    }
    function optionsUser (Request $req){
        
        User::where('id', $req->input("id"))->update(['options' => 'User']);
        $user = User::find($req->input("id")); 
       return $user;
   }
   function del (Request $req){
    $user = User::find($req->input("id")); 
    $user->delete();
   }

  
}

