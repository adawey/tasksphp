<?php

use App\Http\Controllers\Dashboardcontroller;
use App\Http\Controllers\stock\Productcontroller;
use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;

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
});
Route::group(['prefix' => 'dashboard'], function () {
    Route::get('/', [Dashboardcontroller::class, 'index']);
    Route::group(['prefix' => 'products', 'as' => 'products.'], function () {
        Route::get('/', [Productcontroller::class, 'index'])->name('index');
        Route::get('/create', [Productcontroller::class, 'create'])->name('create');
        Route::get('/edit/{id}', [Productcontroller::class, 'edit'])->name('edit');
        Route::delete('/destroy', [Productcontroller::class, 'destroy'])->name('destroy');
        Route::post('store', [Productcontroller::class, 'store'])->name('store');
        Route::put('update', [Productcontroller::class, 'update'])->name('update');
    });
});
