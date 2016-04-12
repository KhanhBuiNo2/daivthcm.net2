<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class updateMyInfoRequest extends Request
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
            'FullName' => 'required',
            'Email' => 'required|email',
            'Birthday' =>'date_format:d/m/Y',
        ];
    }
    public function messages()
    {
        return [
            'FullName.required' => 'Vui long nhap day du ho ten',
            'Email.required'    => 'Vui long nhap email',
            'Email.email'       => 'Vui long nhap dung dinh dang email',
            'Birthday.date_format'     =>  'Vui long nhap dung dinh dang dd/mm/yyyy'

        ];
    }
}
