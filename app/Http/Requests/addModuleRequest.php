<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class addModuleRequest extends Request
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
            'ModuleName'    => 'required|alpha_num|unique:modules,ModuleName'
        ];
    }
    public function messages()
    {
        return [
            'ModuleName.required'   => 'Vui long nhap ten Module',
            'ModuleName.alpha_num'  => 'Ten Module chi gom ky tu chu va so',
            'ModuleName.unique'     => 'Ten Module da ton tai',  
        ];
    }
}
