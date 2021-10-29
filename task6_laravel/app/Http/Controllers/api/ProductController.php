<?php

namespace App\Http\Controllers\api;


use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use App\Models\Subcategorie;
use App\Http\traits\media;
use phpDocumentor\Reflection\PseudoTypes\True_;
use App\Http\traits\apiTrait;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    use apiTrait;
    use media;
    public function index()
    {
        // $products = DB::table('products')->get();
        $products = Product::all();
        foreach ($products as $product) {
            $product->image = url('/') . '/images/products/' . $product->image;
        }
        return $this->returnData(compact('products'));
        // return response()->json(['products' => $products]); 
    }
    public function create()
    {

        $brand_list = Brand::where('status', '1')->get();
        $subCat = Subcategorie::where('status', '1')->get();
        return $this->returnData(compact('brand_list', 'subCat'));

        // return response()->json(['brands' => $brand_list, 'subcategory' => $subCat]);
    }


    public function edit($id)
    {
        $product = Product::find($id);
        if ($product) {
            $brand_list = Brand::where('status', '1')->get();
            $subCat = Subcategorie::where('status', '1')->get();
            // return response()->json(['product' => $product, 'brands' => $brand_list, 'subcategory' => $subCat]);
            // return response()->json(compact('product', 'brand_list', 'subCat'));
            return $this->returnData(compact('product', 'brand_list', 'subCat'));
        } else {
            return $this->returnMessageError("invalid id");
        }
    }



    public function store(Request $data, StoreProductRequest $validation)
    {
        // return $data->all();
        $request = $data->except('image');
        $request['image'] = $this->uploadMedia($data->image, 'products');
        Product::insert($request);

        return $this->returnMessageSuccess(" product created");
        // return response()->json(compact('status', 'msg'));
    }



    public function update(Request $request, UpdateProductRequest $updateProductRequest, $id)
    {
        $idArray = compact('id');
        $validator = Validator::make($idArray, [
            'id' => 'required|exists:products|integer',
        ]);
        if ($validator->fails()) {
            return $this->returnMessageError('invalid id');
        }
        $result = $request->except('image', '_method');
        if ($request->has('image')) {
            $oldImageProduct = product::find($request->id)->image;
            $this->deleteMedia($oldImageProduct, 'products');
            $imageName = $this->uploadMedia($request->image, 'products');
            $result['image'] = $imageName;
        }
        product::where('id', $request->id)->update($result);
        return $this->returnMessageSuccess('product updated');
        // $status = True;
        // $msg = 'product updated';
        // return response()->json(compact('status', 'msg'));
    }



    public function delete($id)
    {
        $catchProduct = product::find($id);
        if (!$catchProduct) {
            return $this->returnMessageError('invalid id');
        }

        $this->deleteMedia($catchProduct->image, 'products');
        $catchProduct->delete();

        return $this->returnMessageSuccess('product deleted');
    }
}
