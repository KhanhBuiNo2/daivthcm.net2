<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class VatTuTaiSanVTN2 extends Model
{
	protected $table = 'vattu_ts_vtn2';
	protected $primaryKey = 'ID';
	protected $fillable = ['ID','ChiTieu','MaTaiSan','SoTheTSCD','MaNguonVon','NamDuaVaoSuDung','HienTrangSuDungTSCD','DonViTinhLuong','BoPhanSuDung','	NguyenGia_KT','	GiaTriConLai_KT','NguyenGia_KK','	GiaTriConLai_KK','	NguyenGia_CL','	GiaTriConLai_CL','GhiChu','TramID'];
}
