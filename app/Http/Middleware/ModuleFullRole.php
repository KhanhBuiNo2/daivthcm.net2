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

class ModuleFullRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //$urlfull = $request->url();//Duong dan day du
        //$urluri = $_SERVER["REQUEST_URI"];//Bo ten mien, bat dau "/../.."
        //$seg_exp = explode('/', substr($urluri, 1));//return array
        //$segments = $request->segments();//return array
        //dd($urluri);

        //session()->flush();
        //if(session()->has('login_user')) dd(session()->get('login_user'));


        //ClsCommon::CreateCookie('login_user', 'login_user');
        //ClsCommon::CreateCookie('login_pass', 'login_pass');
        //ClsCommon::DeleteCookie('login_user');
        //ClsCommon::DeleteCookie('login_pass');

        $C_login_user = ClsCommon::ReadCookie('login_user');
        $C_login_pass = ClsCommon::ReadCookie('login_pass');
        if(!session()->has('login_user')) return redirect()->route('getLogin');
        //dd($C_login_user.'|'.$C_login_pass);
        //dd(session()->get('login_user'));
        //Lay current route nhung chua xu ly phan nay! Co the khong can xu ly gi
        //$currentRoute = \Route::getCurrentRoute()->getPath();

        $currentAction = \Route::currentRouteAction();
        list($controller, $method) = explode('@', $currentAction);
        $controller = preg_replace('/.*\\\/', '', $controller);

        //Load menu da dang nhap -----------------------------------------------------------------------------------
        if(session()->has('login_user')) {
            $user = session()->get('login_user');
            $userid = session()->get('login_userid');
            session()->put('TopMenus', pubMenu::getTwoLevelMenuFromUserIDAndMenuLevel($userid));
            session()->put('id', Input::get('MenuID'));
            //check User Autherization
            if(!Admin::checkAccess($userid,$controller,$method)) {
                session()->flush();
                return redirect()->route('home');
            }     
        }



        //else{
        //    session()->put('TopMenus', pubMenu::getTwoLevelFreeMenuFromMenuLevel());                
        //}

        return $next($request);
    }
}
