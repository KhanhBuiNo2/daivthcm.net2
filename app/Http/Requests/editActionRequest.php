<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class editActionRequest extends Request
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
            'Method'    => 'required',
            'ModuleID'  => 'exists:modules,ModuleID'
        ];
    }
    public function messages(){
        return [
            'Method.required'   => 'Ban chua nhap ten Action',
            'ModuleID.exists'   => 'Ban chua chon Module'
        ];
    }
}
