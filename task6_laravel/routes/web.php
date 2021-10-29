<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Dashboardcontroller;
use App\Http\Controllers\stock\Productcontroller;

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
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');


Route::group(['prefix' => 'dashboard', 'middleware' => 'auth'], function () {
    Route::get('/', [Dashboardcontroller::class, 'index'])->name('home');
    Route::group(['prefix' => 'products', 'as' => 'products.'], function () {
        Route::get('/', [Productcontroller::class, 'index'])->name('index');
        Route::get('/create', [Productcontroller::class, 'create'])->name('create');
        Route::get('/edit/{id}', [Productcontroller::class, 'edit'])->name('edit');
        Route::delete('/destroy', [Productcontroller::class, 'destroy'])->name('destroy');
        Route::post('store', [Productcontroller::class, 'store'])->name('store');
        Route::put('update/{product_id}', [Productcontroller::class, 'update'])->name('update');
    });
});

// Route::get('user/profile',['usercontroller::class' 'select'])->name('profile')->middleware('password.confirm');


require __DIR__ . '/auth.php';
