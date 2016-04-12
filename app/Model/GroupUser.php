<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class GroupUser extends Model
{
 	protected $table = 'group_users';
 	protected $primaryKey = 'GroupUserID';
    protected $fillable = ['GroupUserID','GroupID','UserID'];
    public $timestamp = false;
}

