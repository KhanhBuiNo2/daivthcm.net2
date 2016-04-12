<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Http\Requests;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\addUserRequest;
use App\Http\Requests\addGroupRequest;
use App\Http\Requests\editGroupRequest;
use App\Http\Requests\addMenuRequest;
use App\Http\Requests\updateMyInfoRequest;
use App\Http\Requests\changeMyPasswordRequest;
use App\Http\Controllers\Controller;
use Hash;
use App\Admin;
use App\Model\User;
use App\Model\Menu;
use App\Model\Group;    
class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('homes.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function logout(){
        session()->flush();
        return redirect()->route('home');
    }
    //Thay doi thong tin user
    public function myInfo(){
        return view('homes.myInfo',[
                'MyInfo'    => Admin::getUserInfoFromUserID( session()->get('login_userid') ) 
            ]);
            
    }
    public function updateMyInfo(updateMyInfoRequest $request){
        $user = User::find(session() -> get('login_userid'));
        $birtharr = explode('/',Input::get('Birthday'));
        $birthday = $birtharr[2].'-'.$birtharr[1].'-'.$birtharr[0];
        if(!empty($user)){
            $user -> FullName = Input::get('FullName');
            $user -> Email = Input::get('Email');
            $user -> Phone = Input::get('Phone');
            $user -> Gender = Input::get('Gender');
            $user -> Birthday = $birthday;
            $user -> save();
            return redirect()->back();
        }   
        return redirect()->back();
    }
    public function getChangeMyPassword(){
        return view('homes.changeMyPassword',[
                'MyInfo'    => Admin::getUserFromUsername( session() -> get('login_user') )
            ]);
    }
    public function postChangeMyPassword(changeMyPasswordRequest $request){
        $UserID = session()->get('login_userid');
        $User = User::find($UserID);
        if (Hash::check(Input::get('OldPassword'),$User ->Password ) ){
            $User -> Password = Hash::make(Input::get('NewPassword'));
            $User ->save();
            return redirect()->route('adm_home');        
        }
        else{
            return redirect()->back()->withErrors('Password khong dung. Vui long nhap lai');
        }

    }

}
