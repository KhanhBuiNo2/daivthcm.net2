<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class GroupAuthorization extends Model
{
  	protected $table = 'group_authorizations';
  	protected $primaryKey ='GroupAuthorizationID';
    protected $fillable =['GroupAuthorizationID','GroupID','AuthorizationID'];
    public $timestamp = false;
}
