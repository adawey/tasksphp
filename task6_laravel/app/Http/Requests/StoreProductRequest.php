<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreProductRequest extends FormRequest
{

    /**
     * @return bool 
     * 
     */

    public function authorize()
    {
        return true;
    }

    /**
     * get the validation rules
     * @return array 
     * 
     */

    public function rules()
    {
        return [
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
    }
}
