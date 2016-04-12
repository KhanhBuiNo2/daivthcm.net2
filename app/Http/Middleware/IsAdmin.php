<?php

namespace App\Http\Middleware;

use Closure;
use App\hmxxxxlllib\ClsCommon;

class IsAdmin
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
        $C_login_user = ClsCommon::ReadCookie('login_user');
        $C_login_pass = ClsCommon::ReadCookie('login_pass');
        
        if((!session()->has('login_user')) || (session()->get('is_admin')!=1))  
        {
            session()->flush();
            return redirect()->route('getLogin');
        }
        
        return $next($request);
    }
}
