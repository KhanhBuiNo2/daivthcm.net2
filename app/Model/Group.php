<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
	protected $table = 'groups';
	protected $primaryKey = 'GroupID';
	protected $fillable = ['GroupID','GroupName'];
	public $timestamp = false;
	public function authorization(){
		return $this -> belongsToMany('App\Authorization','group_authorizations'); 
	}
	public function user(){
		return $this -> belongsToMany('App\User','group_users');
	}
	public function menu(){
		return $this -> belongsToMany('App\Menu','menu_groups');
	}
}
