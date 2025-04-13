<?php

namespace App\Http\Controllers;

use App\Models\OurCustomer;
use App\Models\OurPartner;
use App\Models\OurProduct;
use App\Models\OurProject;
use App\Models\OurService;
use App\Models\OurSolution;
use App\Models\Press;
use Inertia\Inertia;

class HomeController extends Controller
{
    //
    public function index()
    {

        // Fetch Our Services data
        $ourServices = OurService::all();
        $ourSolution = OurSolution::all();
        $ourProduct = OurProduct::all();
        $ourProject = OurProject::all();
        $ourCustomer = OurCustomer::all();
        $ourPartner = OurPartner::all();

        $press = Press::all();
        return Inertia::render('MainPages/Home/Home', [
            'ourServices' => $ourServices,
            'ourSolution' => $ourSolution,
            'ourProduct' => $ourProduct,
            'ourProject' => $ourProject,
            'ourCustomer' => $ourCustomer,
            'ourPartner' => $ourPartner,
            'press' => $press,
        ]);
    }
}
