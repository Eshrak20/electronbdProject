<?php

namespace App\Http\Controllers;

use App\Models\EquipmentList;
use Illuminate\Http\Request;
use Inertia\Inertia;

class EquipmentListController extends Controller
{
  
    public function index()
    {
        $equipmentList = EquipmentList::all();
        return Inertia::render('MainPages/EquipmentList/EquipmentList',[
            'equipmentList'=>$equipmentList
        ]);
    }
}
