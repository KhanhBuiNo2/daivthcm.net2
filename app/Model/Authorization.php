<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Authorization extends Model
{
    protected $table = 'authorizations';
    protected $primaryKey = 'AuthorizationID';
    protected $fillable = ['AuthorizationID','ModuleID','Method','Description'];
    public $timestamp = false;


    //dung khi co tao relationship

    public function group(){
    	return $this -> belongsToMany('App\Authorization','group_authorizations');
    }
    public function mudule(){
    	return $this -> belongsTo('App\Module');
    }
}
