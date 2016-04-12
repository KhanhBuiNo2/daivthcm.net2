<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class CapQuangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('capquangs.index');
    }
    public function listPhuongAn(){
        return view('capquangs.PhuongAnList');
    }
    public function searchPhuongAn(){

    }
    public function getAddPhuongAn(){
        return view('capquangs.PhuongAnAdd');
    } 
    public function postAddPhuongAn(){

    }
    public function commitPhuongAn(){

    }
    public function getEditPhuongAn(){

    }
    public function postEditPhuongAn(){

    }

}
