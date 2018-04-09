<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CarRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'make_id' => 'required',
            'model_id' => 'required',
            'title' => 'required',
            'price' => 'required',
            'doors' => 'required',
            'engine_type' => 'required',
            'driven_km' => 'required',
            'color' => 'required',
            'details' => 'required',
        ];
    }
}
