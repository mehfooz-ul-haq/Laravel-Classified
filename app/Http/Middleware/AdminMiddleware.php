<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
use Sentinel;

class AdminMiddleware
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

        /**
        if ( !Auth::check() || (Auth::user()->role_id != 1) )
        {
            return redirect()->route('login');
        }
        */

        // || (Auth::user()->role_id != 1)
        if ( !Sentinel::check() )
        {
            return redirect()->route('feSignInPage');
        }

        return $next($request);
    }
}
