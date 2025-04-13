<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\EquipmentListController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PressController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProjectController;
use Illuminate\Support\Facades\Route;


Route::get('/', [HomeController::class, 'index']);
Route::get('/about', [AboutController::class, 'index']);
Route::get('/gallery', [AboutController::class, 'gallery']);
Route::get('/contacts', [ContactController::class, 'index']);
Route::get('/press', [PressController::class, 'index']);
Route::get('/press/{id}', [PressController::class, 'show']);

Route::get('/projects', [ProjectController::class, 'index']);
Route::get('/projects/{id}', [ProjectController::class, 'show']);

Route::get('/product', [ProductController::class, 'index']);
Route::get('/products/{id}', [ProductController::class, 'show']);

Route::get('/equipment', [EquipmentListController::class, 'index']);

Route::post('/forms', [FormController::class, 'store'])->name('forms.store');



