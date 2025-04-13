<?php

namespace App\Http\Controllers;

use App\Models\Form;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'company' => 'required|string|max:255',
            'phone' => 'required|string|max:15',
            'email' => 'required|email|unique:forms,email',
            'description' => 'required|string',
        ]);
    
        Form::create($validated);
    
        return redirect()->back()->with('success', 'Form submitted successfully!');
    }
}