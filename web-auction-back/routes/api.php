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

Route::group(['middleware' => ['auth:api']], function () {
    Route::get('user', 'UserConstroller@user');
    Route::get('all_items', 'ItemController@getAll');
    Route::post('view_item/{id}', 'ItemController@viewItem');
    Route::post('save_bid', 'UserAuctionController@saveBid');
    Route::get('email/awarded_item/{id}', 'UserAuctionController@sendEmailAwardedItem');
    Route::post('is_authorized', 'UserConstroller@isAuthorized');
    Route::post('item/create', 'ItemController@store');
    Route::post('item/update', 'ItemController@update');
    Route::post('item/delete', 'ItemController@delete');
    Route::get('user/bids', 'UserConstroller@getBidsHistory');
    Route::get('user/awarded_items', 'UserConstroller@getAwardedItems');
    Route::get('user/awarded_item/{id}', 'UserConstroller@getAwardedItemById');
});

Route::post('register', 'UserConstroller@register');
