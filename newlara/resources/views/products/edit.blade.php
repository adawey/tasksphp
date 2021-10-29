@extends('layouts.layout')
@section('title','edit_product')

@section('content')

<form method="POST" action="{{route('products.update',$productEdite->id) }}" enctype="multipart/form-data">
    @method('put')
    @csrf
    <div class="form-row">
        <div class="col-6">
            <label for="">name EN</label>
            <input type="" name="name_en" id="" class="form-control" placeholder="" areia-describedby="helper" value="{{$productEdite->name_en}}" >
        </div>
        <div class="col-6">
            <label for="">Name AR </label>
            <input type="" name="name_er" id="" class="form-control" placeholder="" areia-describedby="helper" value="{{$productEdite->name_ar}}">
        </div>
        <div class="col-6">
            <label for="">price</label>
            <input type="number" name="price" id="" class="form-control" placeholder="" areia-describedby="helper" value="{{$productEdite->price}}">
        </div>
        <div class="col-6">
            <label for="">quantity</label>
            <input type="number" name="quantity" id="" class="form-control" placeholder="" areia-describedby="helper" value="{{$productEdite->quantity}}">
        </div>

          <div class="col-4">
            <label for="">status</label>
            <select name="status" id="" class="form-control">
                <option {{$productEdite->status == 1 ? 'selected' : '' }} value="1"> Active</option>
                <option {{$productEdite->status == 0 ? 'selected' : '' }} value="0">Not Active</option>
            </select>
        </div>
        <div class="col-4">
            <label for="">brand</label>
            <select name="brand" id="" class="form-control">
                <option value=""> No Brand</option>
                @foreach ($getbrands as $brand )
                <option {{$productEdite->brand_id == $brand->id ? 'selected' : '' }} value="{{$brand->id}}">{{$brand->name_en}} </option>
                @endforeach
            </select>
        </div>
        <div class="col-4">
            <label for="">subcategory</label>
            <select name="brand" id="" class="form-control">
                @foreach ($getsubcat as $cate )
                <option {{$productEdite->subcategory_id == $cate->id ? 'selected' : '' }} value="{{$cate->id}}">{{$cate->name_en}} </option>
                @endforeach
            </select>
        </div>
        <div class="col-6">
            <label for="">description arabic </label>
            <textarea type="text" name="desc_ar" id="" cols="30" rows="5" class="form-control">{{$productEdite->desc_ar}}</textarea>
        </div>
        <div class="col-6">
            <label for="">description engilesh </label>
            <textarea type="text" name="desc_en" id="" cols="30" rows="5" class="form-control">{{$productEdite->desc_en}}</textarea>
        </div>


        <div class="col-12">
            <label for="">image</label>

            <input type="file" name="image" id="" class="form-control" placeholder="" areia-describedby="helper">
            <img width="200px" src="{{url('/images/products/'.$productEdite->image)}}" alt="{{$productEdite->name_en}}" >
        </div>



    </div>



    <div class="form-row mt-5" >
    <div class="col-1">
        <button name="page" value="index" class="btn btn-primary rounded form-control"> update </button>
    </div>
    <div class="col-2">
        <button name="page" value="back" class="btn btn-dark rounded form-control "> update & return </button>
    </div>
    </div>
</form>

@endsection