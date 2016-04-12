<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class MenuGroup extends Model
{
 	protected $table = 'menu_groups';
 	protected $primaryKey = 'MenuGroupID';
    protected $fillable = ['MenuGroupID','MenuID','GroupID'];
    public $timestamp = false;
}
