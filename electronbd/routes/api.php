<?php
use Illuminate\Http\Request;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\FormController;
use Illuminate\Routing\Route;

Route::post('/forms', [FormController::class, 'store']);
