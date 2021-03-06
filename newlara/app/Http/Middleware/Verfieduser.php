<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\traits\apiTrait;

class Verfieduser
{
    use apiTrait;
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {

        if (Auth::guard('sanctum')->check()) {
            return $this->returnMessageError('un Authorized user');
        };
        if (!Auth::guard('sanctum')->user()->email_verified_at) {
            return $this->returnMessageError('un verified user');
        }


        return $next($request);
    }
}
