<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class VatTuCCModemVTN extends Model
{
	protected $table = 'vattu_cc_modem_vtn';
	protected $primaryKey = 'id';
	protected $fillable = ['id','TSCD','Ngay','SoThe','Ten_Cong_Cu','S_N','Ngay_BBNT','ViTriLapDat','SoLuong_SS','SoLuong_TT','ChenhLech','GhiChu','Tram'];
}
