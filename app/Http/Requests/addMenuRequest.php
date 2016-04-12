<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class addMenuRequest extends Request
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
            'MenuTitle' => 'required',
            'MenuPosition' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'MenuTitle.required' => 'Vui long nhap Ten Menu',
            'MenuPosition.required' => 'Vui long nhap vi tri menu',
        ];
    }
}
