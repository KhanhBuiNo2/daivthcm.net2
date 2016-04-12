<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class PhuongAn extends Model
{
    protected $table = 'phuongan_department';
    protected $primaryKey = 'id';
    protected $fillable = ['id','DepartmentID','PhuongAnID'];
}
