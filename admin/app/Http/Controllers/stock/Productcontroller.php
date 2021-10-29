<?php

namespace App\Http\Controllers\stock;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Http\traits\media;

class Productcontroller extends Controller
{
    use media;
    public function index()
    {
        $products = DB::table('products')->select('*')->get();
        // $products = DB::table('table')->get();

        return view('products.index', compact('products'));
    }
    public function create()
    {
        $getbrands = DB::table('brands')->select('id', 'name_en')->where('status', 1)->get();
        $getsubcat = DB::table('subcategories')->select('id', 'name_en')->where('status', '1')->get();
        return view('products.create', compact('getbrands', 'getsubcat'));
    }

    public function edit($id)
    {
        // $product = DB::table('products')->select('*')->where('id',$id)->get();
        return view('products.edit');
    }

    public function store(Request $data, StoreProductRequest $validation)
    {
        $imageName = $this->uploadMedia($data->image, 'products');
        $request = $data->except('_token', 'image', 'page');
        $request['image'] = $imageName;
        DB::table('products')->insert($request);
        if ($data->page == 'index') {
            return redirect()->route('products.index');
        } else {
            return redirect()->route('products.create');
        }
    }

    public function update(Request $data, $id, UpdateProductRequest  $validation)
    {
        $result = $data->except('image', 'page', '_token', '_method');
        if ($data->has(['image'])) {
            $oldImageProduct = DB::table('products')->select('image')->where('id', $id)->first()->image;
            $this->deleteMedia($oldImageProduct, 'products');
            $imageName = $this->uploadMedia($data->image, 'products');
            $result['image'] = $imageName;
        }
        DB::table('products')->where('id', $id)->update($result);
        if ($data->page == 'index') {
            return redirect()->route('products.index');
        } else {
            return redirect()->route('products.create');
        }
    }



    public function destroy()
    {
        return 'ok';
    }
}
