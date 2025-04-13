<?php

namespace App\Http\Controllers;

use App\Models\OurProject;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ProjectController extends Controller
{
    //

    public function index()
    {
        $ourProject = OurProject::all();
        return Inertia::render('MainPages/Project/Project', [
            'ourProject' => $ourProject,
        ]);
    }
    public function show($id)
    {
        $project = OurProject::findOrFail($id);
        return Inertia::render('MainPages/Project/ProjectDetails', ['project' => $project]);
    }
}
