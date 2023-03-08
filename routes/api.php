<?php
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EvenementController;
use App\Http\Controllers\HistoriqueController;
use App\Http\Controllers\ConventionController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Promotion;
use App\Http\Controllers\PromotionController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('register' , [UserController::class , 'register']);
Route::post('login' , [UserController::class , 'login']);
Route::get('list' , [UserController::class , 'list']);
Route::post('options' , [UserController::class , 'options']);
Route::post('optionsUser' , [UserController::class , 'optionsUser']);
Route::post('del' , [UserController::class , 'del']);
Route::post('addEvent' , [EvenementController::class , 'addEvent']);
Route::get('listEvent' , [EvenementController::class , 'listEvent']);
Route::get('listHistorique' , [HistoriqueController::class , 'listHistorique']);
Route::get('search/{key}',[HistoriqueController::class , 'search']);
Route::get('listConvention',[ConventionController::class,'listConvention']);
Route::post('uploadUser' , [HistoriqueController::class , 'uploadUser']);
Route::delete('delEvent/{id}' , [EvenementController::class , 'delEvent']);
Route::delete('DelConvention/{id}' , [ConventionController::class , 'DelConvention']);
Route::post('addCon',[ConventionController::class,'addCon']);
Route::get('check' , [EvenementController::class , 'check']);
Route::get('testSession' , [EvenementController::class , 'testSession']);
Route::get('send',[HomeController::class,"sendnotification"]);
Route::get('sends',[HomeController::class,"sendnotifications"]);
Route::post('addPromo' , [PromotionController::class , 'addPromo']);
Route::get('listPromo' , [PromotionController::class , 'listPromo']);
Route::get('sendOffer',[HomeController::class,"sendnotificationOffer"]);
Route::delete('delPromo/{id}' , [PromotionController::class , 'delPromo']);