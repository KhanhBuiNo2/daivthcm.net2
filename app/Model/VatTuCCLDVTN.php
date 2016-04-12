<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class VatTuCCLDVTN extends Model
{
	protected $table = 'vattu_ccld_vtn';
	protected $primaryKey = 'id';
	protected $fillable = ['id','TenCongCu','DonViTinh','ThoiGianSuDung','NoiDat','BoPhanSuDung','SoLuong_SS','SoLuong_KK','ChenhLech_TT','HienTrang','GhiChu','TramID'];
}
