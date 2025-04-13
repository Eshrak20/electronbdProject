<?php

namespace App\Http\Controllers;

use App\Models\Achievement;
use App\Models\Gallery;
use App\Models\Leader;
use App\Models\LeaderModel;
use App\Models\ManagementTable;
use App\Models\OurCustomer;
use App\Models\OurPartner;
use Illuminate\Http\Request;
use Inertia\Inertia;

class AboutController extends Controller
{
    //
    public function index()
    {
        $ourCustomer = OurCustomer::all();
        $ourPartner = OurPartner::all();
        $leader = Leader::all();
        $ManagementTable = ManagementTable::all();
        $achievements = Achievement::all();


        return Inertia::render('MainPages/About/About', [
            'ourCustomer' => $ourCustomer,
            'ourPartner' => $ourPartner,
            'leader' => $leader,
            'ManagementTable' => $ManagementTable,
            'achievements' => $achievements,
        ]);
    }
    public function gallery()
    {

        $gallery = Gallery::all();

        return Inertia::render('MainPages/About/Gallery', [
            'gallery' => $gallery,
        ]);
    }
}
