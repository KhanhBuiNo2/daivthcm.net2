<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class addUserRequest extends Request
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
    public function rules(){
    
        return [
            'Username'  => 'required|alpha_num|between:3,15|unique:users,Username',
            'FullName' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'Username.required' => 'Vui long nhap Username',
            'Username.alpha_num'=> 'Username chi gom ky tu chu va so',
            'Username.between'  => 'Username gom 3 toi 15 ky tu',
            'Username.unique'   => 'Username nay da ton tai. Vui long tao user khac',
            'FullName.required' => 'Vui long nhap Ho Ten',  
        ];
    }
}
