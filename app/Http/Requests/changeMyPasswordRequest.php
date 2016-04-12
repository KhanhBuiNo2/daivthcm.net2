<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class changeMyPasswordRequest extends Request
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
            'OldPassword'           => 'required',
            'NewPassword'           => 'required | alpha_dash | between:6,15 | different:OldPassword',
            'ConfirmNewPassword'    => 'same:NewPassword'
        ];
    }
    public function messages()
    {
        return [
            'NewPassword.required'      => "Vui long nhap password moi",
            'NewPassword.alpha_dash'    => "Password chi fom ky tu chu, so, -,_",
            'NewPassword.between'       => "Password phai co do dai toi thieu la 6 ky tu",
            'NewPassword.different'     => "Password moi phai khac Password Cu",
            'ConfirmNewPassword.same'   => "Password confirm chua dung",
        ];
    }
}
