<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Module extends Model
{
	protected $table = 'modules';
	protected $primaryKey = 'ModuleID';
    protected $fillable = ['ModuleID','ModuleName','Note'];
    public $timestamp = false;
    public function authorization(){
    	return $this ->hasMany('App\Authorization');
    }
}
