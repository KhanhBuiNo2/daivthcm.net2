<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use URL;
use App\Model\VatTuCCKhoDai;
use App\Model\VatTuCCLDVTN;
use App\Model\VatTuCCModemVTN;
use App\Model\VatTuKhoDai;
use App\Model\VatTuTaiSanVTN2;
use DB;
/*
**
*/
class TaiSan extends Model
{	
	//Phuc vu Ms.Van
	public static function getVatTuCongCuKhoDai($search = NULL, $tramid = NULL){
		if(empty($search)&&empty($tramid)){
			return VatTuCCKhoDai::all()->toArray();
		}
		else{
			if(empty($search))
				return VatTuCCKhoDai::where('TramID','=',$tramid) -> get() -> toArray();
			if(empty($tramid))
				return VatTuCCKhoDai::where('TenHangTonKho','like','%'.$search.'%')
				 						-> orWhere('Maso','like','%'.$search.'%')
						 				-> get() 
						 				-> toArray();
			return VatTuCCKhoDai::where(function($query)
						            {
						                $query->where('TenHangTonKho','like','%'.$search.'%')
						                      ->orWhere('Maso','like','%'.$search.'%');
						            })
								-> where('TramID', '=', $tramid)
				 				-> get() 
				 				-> toArray();

		}
	}

	public static function getVatTuCongCuModemVTN($search = NULL, $tramid = NULL){
		if(empty($search)&&empty($tramid)){
			return VatTuCCModemVTN::all()->toArray();
		}
		else{
			if(empty($search))
				return VatTuCCModemVTN::where('TramID','=',$tramid) -> get() -> toArray();
			if(empty($tramid))
				return VatTuCCModemVTN::where('TenCongCu','like','%'.$search.'%')
							 				-> get() 
							 				-> toArray();
			return VatTuCCModemVTN::where('TenCongCu','like','%'.$search.'%')
						           		-> where('TramID', '=', $tramid)
						 				-> get() 
						 				-> toArray();
		}
	}
	public static function getVatTuCongCuLaoDongVTN($search = NULL, $tramid = NULL){
		if(empty($search)&&empty($tramid)){
			return VatTuCCLDVTN::all()->toArray();
		}
		else{
			if(empty($search))
				return VatTuCCLDVTN::where('TramID','=',$tramid) -> get() -> toArray();
			if(empty($tramid))
				return VatTuCCLDVTN::where('TenCongCu','like','%'.$search.'%')
							 				-> get() 
							 				-> toArray();
			return VatTuCCLDVTN::where('TenCongCu','like','%'.$search.'%')
						           		->where('TramID', '=', $tramid)
						 				-> get() 
						 				-> toArray();
		}
	}
	public static function getVatTuKhoDai($search = NULL, $tramid = NULL){
		if(empty($search)&&empty($tramid)){
			return VatTuKhoDai::all()->toArray();
		}
		else{
			if(empty($search))
				return VatTuKhoDai::where('TramID','=',$tramid) -> get() -> toArray();
			if(empty($tramid))
				return VatTuKhoDai::where('Ma_Kho','like','%'.$search.'%')
				 						-> orWhere('TenHangTonKho','like','%'.$search.'%')
				 						-> orWhere('MaSo','like','%'.$search.'%')
						 				-> get() 
						 				-> toArray();
			return VatTuKhoDai::where(function($query)
						            {
						              $query-> where('Ma_Kho','like','%'.$search.'%')
					 						-> orWhere('TenHangTonKho','like','%'.$search.'%')
					 						-> orWhere('MaSo','like','%'.$search.'%');
						            })
								-> where('TramID', '=', $tramid)
				 				-> get() 
				 				-> toArray();

		}
	}
	public static function getVatTuTaiSanVTN2($search = NULL, $tramid = NULL){
		if(empty($search)&&empty($tramid)){
			return VatTuTaiSanVTN2::all()->toArray();
		}
		else{
			if(empty($search))
				return VatTuTaiSanVTN2::where('TramID','=',$tramid) -> get() -> toArray();
			if(empty($tramid))
				return VatTuTaiSanVTN2::where('ChiTieu','like','%'.$search.'%')
				 						-> orWhere('MaTaiSan','like','%'.$search.'%')
				 						-> orWhere('SoTheTSCD','like','%'.$search.'%')
						 				-> get() 
						 				-> toArray();
			return VatTuTaiSanVTN2::where(function($query)
						            {
						              $query-> where('ChiTieu','like','%'.$search.'%')
					 						-> orWhere('MaTaiSan','like','%'.$search.'%')
				 							-> orWhere('SoTheTSCD','like','%'.$search.'%');
						            })
								-> where('TramID', '=', $tramid)
				 				-> get() 
				 				-> toArray();

		}
	}
	//Quan Ly Vat Tu Dai
	public static function getDanhSachVatTu(){
		return VatTuDanhSach::all()->toArray();
	}
	public static function searchVatTu($serach = NULL, $tramid = NULL){

	}
	public static function updateVattu(){

	}
}
