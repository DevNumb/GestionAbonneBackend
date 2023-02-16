<?php
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EvenementController;
use App\Http\Controllers\HistoriqueController;
use App\Http\Controllers\ConventionController;
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