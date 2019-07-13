<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('welcome');


Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home')->middleware('verified');
Route::group(['middleware' => 'auth'], function(){
    Route::get('/contact_us','ContactController@index');
    Route::get('/biodata','BiodataController@index');
    Route::get('/syncdata','SyncDataController@index');
    Route::post('/home', 'BiodataController@update')->name('biodata.update');
    Route::get('/about','AboutController@index');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::get('message','\App\Http\Controllers\Voyager\MessageController@index')->middleware('admin.user');
    //Route::get('users','\App\Http\Controllers\Voyager\UserController@index')->middleware('admin.user');
});





