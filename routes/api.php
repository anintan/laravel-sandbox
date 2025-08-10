<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\Auth\RegisterController;
use App\Http\Controllers\Api\Auth\LoginController;
use App\Http\Controllers\KelasController;


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('/register', [RegisterController::class, 'register']);
Route::post('/login', [LoginController::class, 'login'])->name('Login');


Route::middleware('auth:api')->group(function () {
    Route::get('/user', [UserController::class, 'index']);           // Ambil semua user
    Route::get('/user/{id}', [UserController::class, 'show']);       // Ambil user by ID
    Route::post('/user', [UserController::class, 'store']);          // Tambah user
    Route::put('/user/{id}', [UserController::class, 'update']);     // Update user
    Route::delete('/user/{id}', [UserController::class, 'destroy']); // Hapus user

     // Endpoint Kelas
    Route::get('/kelas', [KelasController::class, 'index']);
    Route::get('/kelas/{id}', [KelasController::class, 'show']);
    Route::post('/kelas', [KelasController::class, 'store']);
    Route::put('/kelas/{id}', [KelasController::class, 'update']);
    Route::delete('/kelas/{id}', [KelasController::class, 'destroy']);
});


