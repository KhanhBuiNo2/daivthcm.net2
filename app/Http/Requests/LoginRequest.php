<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class LoginRequest extends Request
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
            'username'  => 'required|alpha_num|between:3,15',
            'password'  => 'required|alpha_dash|between:3,15',    
        ];
    }
    public function messages()
    {
        return [
            'username.required' => 'Vui long nhap Username',
            'username.alpha_num'=>  'Username / Password khong dung. Vui long nhap lai!',
            'username.between'  =>  'Username / Password khong dung. Vui long nhap lai!',
            'password.required' =>  'Vui long nhap Password',
            'password.alpha_num'=>  'Username / Password khong dung. Vui long nhap lai!',
            'password.between'  =>  'Username / Password khong dung. Vui long nhap lai!',
        ];
    }
}
    