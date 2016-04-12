<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class PhuongAn extends Model
{
    protected $table = 'phuongan';
    protected $primaryKey = 'PhuongAnID';
    protected $fillable = ['PhuongAnID','TenPhuongAn','NoiDung','UserID','Note'];
}
