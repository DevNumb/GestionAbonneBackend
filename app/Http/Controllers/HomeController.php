<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Notifications\sendnotification;
use App\Notifications\sendEmail;
class HomeController extends Controller
{
   public function sendnotification (){
      $email = 'nahdi.hassene34@gmail.com';
      $user = User::where('email', '=', $email)->first();
      $details =[
        'greeting' => "Hi from other side",
        'body'=> 'this is my email body',
        'actiontext' => 'Subscribe this',
        'actionurl' => '/',
        'lastline' => 'this is the last line',



      ];
      $user->notify(new sendEmail($details));
      
   }
}
