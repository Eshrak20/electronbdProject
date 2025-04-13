<?php

namespace App\Http\Controllers;

use App\Models\OurProduct;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ProductController extends Controller
{
    //
    public function index()
    {
        $ourProduct = OurProduct::all();
        return Inertia::render('MainPages/Product/Product', [
            'ourProduct' => $ourProduct,
        ]);
    }

    public function show($id)
    {
        $product = OurProduct::findOrFail($id);
        return Inertia::render('MainPages/Product/ProductDetails', ['product' => $product]);
    }
}
