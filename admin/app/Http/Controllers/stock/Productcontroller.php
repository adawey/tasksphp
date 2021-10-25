<?php

namespace App\Http\Controllers\stock;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class Productcontroller extends Controller
{
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

    public function store(Request $data)
    {
        $rules = [
            'name_en' => ['required', 'string', 'max:100'],
            'name_ar' => ['required', 'string', 'max:100'],
            'price' => ['required', 'numeric', 'min:1', 'max:99999.9'],
            'quantity' => ['nullable', 'integer', 'min:1', 'max:99999.9'],
            'status' => ['required', 'integer', 'min:0', 'max:1'],
            'brand_id' => ['nullable', 'integer', 'exists:brands,id'],
            'subcategory_id' => ['required', 'integer', 'exists:subcategories,id'],
            'desc_ar' => ['required', 'string'],
            'desc_en' => ['required', 'string'],
            'image' => ['required', 'max:1000', 'mimes:png,jpg,jpeg']
        ];
        $data->validate($rules);
        $imageName = time() . '.' . $data->image->extension();
        $data->image->move(public_path('images\products'), $imageName);
        $request = $data->except('_token', 'image', 'page');
        $request['image'] = $imageName;
        DB::table('products')->insert($request);
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

    public function update(Request $data)
    {
        return $data->all();
    }
}
