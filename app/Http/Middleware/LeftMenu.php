<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;

use DB;
use Crypt;
use App\hmxxxxlllib\ClsCommon;
use App\Admin;
use App\pubMenu;
//use App\Admin_menurole;
//use App\Admin_navbarrole;

class LeftMenu
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $RouteMenuAlias)
    {
        $userid = session() -> get('login_userid');
        switch ($RouteMenuAlias) {
            case 'tongdai':
                $MenuAlias = 'tongdai';
                break;
            case 'ipcore':
                $MenuAlias = 'ipcore';
                break;
            case 'truyendan':
                $MenuAlias = 'truyendan';
                break;    
            case 'thietbingoaivi':
                $MenuAlias = 'thietbingoaivi';
                break;
            default:
                $MenuAlias = 'thietbingoaivi';
        }
        session()->put('SelectedMenuID',3); 
        return $next($request);
    }
}
