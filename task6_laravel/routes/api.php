<?php

use App\Http\Controllers\api\auth\EmailVierficationcontroller;
use App\Http\Controllers\api\auth\Logincontroller;
use App\Http\Controllers\api\auth\Passwordcontroller;
use App\Http\Controllers\api\auth\ProfileController;
use App\Http\Controllers\api\auth\Registercontroller as AuthRegistercontroller;
use App\Http\Controllers\api\ProductController;
use App\Http\Controllers\api\auth\Registercontroller;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'verify_api '], function () {
    Route::get('products/all', [ProductController::class, 'index']);
    Route::get('create/product', [ProductController::class, 'create']);
    Route::get('update/product/{id}', [ProductController::class, 'edit']);
    Route::post('store/product', [ProductController::class, 'store']);
    Route::put('update/product/{id}', [ProductController::class, 'update']);
    Route::delete('product/delete/{id}', [ProductController::class, 'delete']);
});

Route::group(['prefix' => 'users'], function () {
    Route::group(['middleware' => 'mustguest '], function () {
        Route::post('/register', RegisterController::class);
        Route::post('login', [Logincontroller::class, 'login']);
        Route::post('verifyemail', [Passwordcontroller::class, 'verifyEmail']);
    });
    Route::group(['middleware' => 'verify_api'], function () {
        Route::get('/send_code', [EmailVierficationcontroller::class, 'sendCode']);
        Route::get('verify', [EmailVierficationcontroller::class, 'verify']);
    });
    Route::group(['middleware' => 'verify_api'], function () {
        Route::get('logout', [Logincontroller::class, 'logout']);
        Route::get('logoutAll', [Logincontroller::class, 'logoutAll']);
        Route::get('profile', ProfileController::class);
        Route::post('setNewPassword', [Passwordcontroller::class, 'setNewPassword']);
    });
});
