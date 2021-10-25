@extends('layouts.layout')
@section('title','create_product')

@section('content')

<form method="POST" action="{{route('products.store')}}" enctype="multipart/form-data">
    @csrf
    <div class="form-row">


        <div class="col-6">
            <label for="">name EN</label>
            <input type="" name="name_en" id="" class="form-control" placeholder="" areia-describedby="helper" value="{{ old('name_en')}}">
            @error('name_en')
                <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>




        <div class="col-6">
            <label for="">Name AR </label>
            <input type="" name="name_ar" id="" class="form-control" placeholder="" areia-describedby="helper" value="{{ old('name_ar')}}">
            @error('name_ar')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>



        <div class="col-6">
            <label for="">price</label>
            <input type="number" name="price" id="" class="form-control" placeholder="" areia-describedby="helper" value="{{ old('price')}}">
            @error('price')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>



        <div class="col-6">
            <label for="">quantity</label>
            <input type="number" name="quantity" id="" class="form-control" placeholder="" areia-describedby="helper" value="{{ old('quantity')}}">
            @error('quantity')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>




          <div class="col-4">
            <label for="">status</label>
            <select name="status" id="" class="form-control">
                <option {{old('status') == 1 ? 'selected' : '' }} value="1"> Active</option>
                <option {{old('status') == 0 ? 'selected' : '' }} value="0">Not Active</option>
            </select>
            @error('status')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>




        <div class="col-4">
            <label for="">brand</label>
            <select name="brand_id" id="" class="form-control">
                @foreach ($getbrands as $brand )
                <option {{old('status') == $brand->id ? 'selected' : '' }} value="{{$brand->id}}">{{$brand->name_en}} </option>
                @endforeach
            </select>
            @error('brand_id')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>




        <div class="col-4">
            <label for="">subcategory</label>
            <select name="subcategory_id" id="" class="form-control">
                @foreach ($getsubcat as $cate )
                <option {{old('status') == $cate->id ? 'selected' : '' }} value="{{$cate->id}}">{{$cate->name_en}} </option>
                @endforeach
            </select>
            @error('subcategory_id')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>




        <div class="col-6">
            <label for="">description arabic </label>
            <textarea type="text" name="desc_ar" id="" cols="30" rows="5" class="form-control">{{old('desc_ar')}}</textarea>
            @error('desc_ar')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>


        <div class="col-6">
            <label for="">description engilesh </label>
            <textarea type="text" name="desc_en" id="" cols="30" rows="5" class="form-control">{{old('desc_en')}}</textarea>
            @error('desc_en')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>


        <div class="col-12">
            <label for="">image</label>
            <input type="file" name="image" id="" class="form-control" placeholder="" areia-describedby="helper">
            @error('image')
            <div class="alert alert-danger mt-3">{{ $message }}</div>
            @enderror
        </div>



    </div>
    <div class="form-row mt-5" >
    <div class="col-1">
        <button name="page" value="index" class="btn btn-primary rounded form-control"> create </button>
    </div>
    <div class="col-2">
        <button name="page" value="create" class="btn btn-dark rounded form-control "> create & return </button>
    </div>
    </div>
</form>

@endsection