<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Notifications\sendnotification;
use App\Notifications\sendEmail;
use App\Notifications\sendnotifications;
use App\Notifications\sendnotificationOffer;
class HomeController extends Controller
{
   public function sendnotification (){
      $email = 'nahdi.hassene34@gmail.com';
      $user = User::where('email', '=', $email)->first();
      $details =[
        'greeting' => "HELLO admin",
        'body'=> 'other user is added',
        'actiontext' => 'Check',
        'actionurl' => 'http://localhost:3000/register',
        'lastline' => 'this is the last line',



      ];
      $user->notify(new sendEmail($details));
      
   }


   public function sendnotifications (){
      $users = User::all();

      $details =[
        'greeting' => "HELLO User",
        'body'=> 'Event has been added',  
        'actiontext' => 'Check',
        'actionurl' => 'http://localhost:3000/register',
        'lastline' => 'login in to see',



      ];
      foreach ($users as $user) {
         $user->notify(new sendEmail($details));
     }
      
      
   }

   
   public function sendnotificationOffer (){
      $users = User::all();

      $details =[
        'greeting' => "HELLO User",
        'body'=> 'Offer has been added',
        'actiontext' => 'Check',
        'actionurl' => 'http://localhost:3000/register',
        'lastline' => 'login in to see',



      ];
      foreach ($users as $user) {
         $user->notify(new sendEmail($details));
     }
      
      
   }
}
