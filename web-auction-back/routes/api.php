<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::get('user','UserConstroller@user')->middleware('auth:api');
Route::get('all_items','ItemController@getAll')->middleware('auth:api');
Route::post('view_item/{id}','ItemController@viewItem')->middleware('auth:api');
Route::post('save_bid','UserAuctionController@saveBid')->middleware('auth:api');
Route::post('is_authorized','UserConstroller@isAuthorized')->middleware('auth:api');

