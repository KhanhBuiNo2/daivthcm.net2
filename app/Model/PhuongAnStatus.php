<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class PhuongAn extends Model
{
    protected $table = 'phuongan_status';
    protected $primaryKey = 'StatusID';
    protected $fillable = ['StatusID','StatusName','Date',' PhuongAnID'];
}
