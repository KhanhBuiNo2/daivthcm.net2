<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class VatTuDanhSach extends Model
{
	protected $table = 'vattu_danhsach';
	protected $primaryKey = 'vattuid';
	protected $fillable = ['vattuid','LoaiVatTu','GhiChu'];
}
