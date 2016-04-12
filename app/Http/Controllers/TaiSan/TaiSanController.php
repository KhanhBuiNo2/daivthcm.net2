<?php

namespace App\Http\Controllers\TaiSan;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\TaiSan;
use Hash;
class TaiSanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('taisans.index');
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
    public function vattucongcukhodai(){
        return view('taisans.vattucongcukhodai',[
            'searchs'   => NULL
            ]);
    }
    public function searchvattucongcukhodai(){
        return view('taisans.vattucongcukhodai',[
            'searchs'   => TaiSan::getVatTuCongCuKhoDai(Input::get('search'),Input::get('address'))
            ]);
    }
    public function vattucongcumodemvtn(){
        return view('taisans.vattucongcumodemvtn',[
            'searchs'   => NULL
            ]);
    }
    public function searchvattucongcumodemvtn(){
        return view('taisans.vattucongcumodemvtn',[
            'searchs'   => TaiSan::getVatTuCongCuModemVTN(Input::get('search'),Input::get('address'))
            ]);
    }
    public function vattucongculaodongvtn(){
        return view('taisans.vattucongculaodongvtn',[
            'searchs'   => NULL
            ]);
    }
    public function searchvattucongculaodongvtn(){
        return view('taisans.vattucongculaodongvtn',[
            'searchs'   => TaiSan::getVatTuCongCuLaoDongVTN(Input::get('search'),Input::get('address'))
            ]);
    }
    public function vattukhodai(){
        return view('taisans.vattukhodai',[
            'searchs'   => NULL
            ]);
    }
    public function searchvattukhodai(){
        return view('taisans.vattukhodai',[
            'searchs'   => TaiSan::getVatTuKhoDai(Input::get('search'),Input::get('address'))
            ]);
    }
    public function vattutaisanvtn2(){
        return view('taisans.vattutaisanvtn2',[
            'searchs'   => NULL
            ]);
    }
    public function searchvattutaisanvtn2(){
        return view('taisans.vattutaisanvtn2',[
            'searchs'   => TaiSan::getVatTuTaiSanVTN2(Input::get('search'),Input::get('address'))
            ]);
    }

}
