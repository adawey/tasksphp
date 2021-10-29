<?php

namespace App\Http\Controllers\api;


use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProductRequest;
use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use App\Models\Subcategorie;

class ProductController extends Controller
{


    public function index()
    {
        // $products = DB::table('products')->get();
        $products = Product::all();
        return response()->json(['products' => $products]);
    }
    public function create()
    {

        $brand_list = Brand::where('status', '1')->get();

        $subCat = Subcategorie::where('status', '1')->get();

        return response()->json(['brands' => $brand_list, 'subcategory' => $subCat]);
    }
    public function edit($id)
    {
        $product = Product::find($id);
        $brand_list = Brand::where('status', '1')->get();

        $subCat = Subcategorie::where('status', '1')->get();

        // return response()->json(['product' => $product, 'brands' => $brand_list, 'subcategory' => $subCat]);
        return response()->json(compact('product', 'brand_list', 'subCat'));
    }

    public function store(Request $data, StoreProductRequest $validation)
    {
        return $data->all();
    }
}
