<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
 	protected $table = 'menus';
 	protected $primaryKey = 'MenuID';
    protected $fillable = ['MenuID','MenuPosition','MenuTitle','MenuParent'];
    public $timestamp = false;
}
