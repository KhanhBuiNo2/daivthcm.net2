<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class addGroupRequest extends Request
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
            'GroupName' => 'required|unique:groups,GroupName',
        ];
    }
    public function messages()
    {
        return [
            'GroupName.required' => 'Vui long nhap ten nhom',
            'GroupName.unique'  => 'Nhom da ton tai. Vui long kiem tra lai!' 
        ];
    }
}
