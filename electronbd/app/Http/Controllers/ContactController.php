<?php

namespace App\Http\Controllers;
use Inertia\Inertia;

class ContactController extends Controller
{
    //
    public function index()
    {
        
        return Inertia::render('MainPages/Contact/Contact');
    }



}
