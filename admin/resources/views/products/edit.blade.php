@extends('layouts.layout')
@section('title','edit_product')

@section('content')

<form method="POST" action="{{route('products.update') }}" enctype="multipart/form-data">
    @method('put')
    @csrf
    <div class="form-row">
        <div class="col-6">
            <label for="">name EN</label>
            <input type="" name="name_en" id="" class="form-control" placeholder="" areia-describedby="helper">
        </div>
        <div class="col-6">
            <label for="">Name AR </label>
            <input type="" name="name_er" id="" class="form-control" placeholder="" areia-describedby="helper">
        </div>
        <div class="col-6">
            <label for="">price</label>
            <input type="number" name="price" id="" class="form-control" placeholder="" areia-describedby="helper">
        </div>
        <div class="col-6">
            <label for="">quantity</label>
            <input type="number" name="quantity" id="" class="form-control" placeholder="" areia-describedby="helper">
        </div>

          <div class="col-4">
            <label for="">status</label>
            <select name="status" id="" class="form-control">
                <option value="1"> Active</option>
                <option value="0">Not Active</option>
            </select>
        </div>
        <div class="col-4">
            <label for="">brand</label>
            <select name="brand" id="" class="form-control">
                <option value=""> </option>
            </select>
        </div>
        <div class="col-4">
            <label for="">subcategory</label>
            <select name="brand" id="" class="form-control">
                <option value=""> </option>
            </select>
        </div>
        <div class="col-6">
            <label for="">description arabic </label>
            <textarea type="text" name="desc_ar" id="" cols="30" rows="5" class="form-control"></textarea>
        </div>
        <div class="col-6">
            <label for="">description engilesh </label>
            <textarea type="text" name="desc_en" id="" cols="30" rows="5" class="form-control"></textarea>
        </div>
        <div class="col-12">
            <label for="">image</label>
            <input type="file" name="image" id="" class="form-control" placeholder="" areia-describedby="helper">
        </div>
    </div>
    <div class="form-row mt-5" >
    <div class="col-1">
        <button class="btn btn-primary rounded form-control"> update </button>
    </div>
    <div class="col-2">
        <button class="btn btn-dark rounded form-control "> update & return </button>
    </div>
    </div>
</form>

@endsection