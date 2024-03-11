<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BerandaController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryProductAnperController;
use App\Http\Controllers\CategoryProductController;
use App\Http\Controllers\CustomerAnperController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\FeBerandaController;
use App\Http\Controllers\FileRegristasiController;
use App\Http\Controllers\GudangController;
use App\Http\Controllers\JabatanController;
use App\Http\Controllers\KertasKerjaController;
use App\Http\Controllers\KunjunganController;
use App\Http\Controllers\KunjunganRekananController;
use App\Http\Controllers\MasterDataController;
use App\Http\Controllers\ProductAnperController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\PtController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MProductController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\RealisasiController;
use App\Http\Controllers\TeamController;
use Illuminate\Support\Facades\Auth;
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

Route::get('/', [FeBerandaController::class, 'index'])->name('/');
Route::get('about', [FeBerandaController::class, 'about'])->name('about');
Route::get('service', [FeBerandaController::class, 'service'])->name('service');
Route::get('blog', [FeBerandaController::class, 'blog'])->name('blog');
Route::get('singe-blog/{id}', [FeBerandaController::class, 'detailblog'])->name('singe-blog');
Route::get('project', [FeBerandaController::class, 'project'])->name('project');
Route::get('team', [FeBerandaController::class, 'team'])->name('team');
Route::get('contact', [FeBerandaController::class, 'contact'])->name('contact');

Route::get('login', function () {
    return view('auth.login');
});
Auth::routes();

Route::prefix('internal')->middleware(['auth', 'akses:superadmin,admin,user'])->group(function () {
    Route::resource('projects', ProjectController::class);
    Route::resource('blogs', BlogController::class);
    Route::resource('teams', TeamController::class);

    Route::get('beranda', [BerandaController::class, 'index'])->name('beranda');

    //user
    Route::resource('user', UserController::class);
    Route::put('updateUser/{id}',[UserController::class, 'updateUser'])->name('updateUser');
});

Route::get('logout', function () {
    Auth::logout();
    return redirect('login');
});

