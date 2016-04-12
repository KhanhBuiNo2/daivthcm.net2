<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class VatTuKhoDai extends Model
{
	protected $table = 'vattu_khodai';
	protected $primaryKey = 'ID';
	protected $fillable = ['ID','NgayNhap','Ma_Kho','TenHangTonKho','MaSo','DonViTinh','SoLuong_KT','DonGia_KT','Tien_KT','Seri_KT','SoLuong_TT','DonGia_TT','Tien_TT','SoLuong_CL','Tien_CL','GhiChu','TramID'];
}
