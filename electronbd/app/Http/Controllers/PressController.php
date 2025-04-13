<?php

namespace App\Http\Controllers;

use App\Models\Press;
use Illuminate\Http\Request;
use Inertia\Inertia;

class PressController extends Controller
{
    //
    public function index()
    {
        $press = Press::all();
        return Inertia::render('MainPages/Press/Press',[
            'press'=>$press
        ]);
    }

    public function show($id)
    {
        $press = Press::findOrFail($id);
        return Inertia::render('MainPages/Press/PressDetails', ['press' => $press]);
    }
}
