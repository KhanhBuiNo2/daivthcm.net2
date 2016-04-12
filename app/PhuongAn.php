<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use URL;
use App\Model\PhuongAn;
use App\Model\PhuongAnDepartment;
use App\Model\PhuongAnStatus;
use DB;
use App\User;
/*
**
*/
class PhuongAn extends Model
{	
	public static function getPhuongAnFromUserID($UserID){
		$user = User::find($UserID) -> toArray();
		if(!empty($user)){
			$DepartmentID = $user['DepartmentID'];
			return DB::table('phuongan_department')
							-> join('phuongan','phuongan.PhuongAnID','=','phuongan_department.PhuongAnID')
							-> join('phuongan_status','phuongan_status.PhuongAnID','=','phuongan_department.PhuongAnID')
							-> where('phuongan_department.PhuongAnID','=',$DepartmentID)
							-> get();
		}
	}
	
}