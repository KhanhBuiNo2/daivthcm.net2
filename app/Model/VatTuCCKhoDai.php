<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class VatTuCCKhoDai extends Model
{
	protected $table = 'vattu_cc_khodai';
	protected $primaryKey = 'id';
	protected $fillable = ['id','TenHangTonKho','MaSo','DonViTinh','SoLuong_KT','DonGia_KT','Tien_KT','SoLuong_TT','DonGia_TT','Tien_TT','SoLuong_HH','DonGia_HH','Tien_HH','DonGia_CL','Tien_CL','GhiChu','TramID'];
}
