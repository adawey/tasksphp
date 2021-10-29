<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Http\traits\apiTrait;
use Illuminate\Support\Facades\Auth;

class MustBeGuest
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
        if (!Auth::guard('sanctum')->check()) {
            return $this->returnMessageError('u cant access this now ');
        }
        return $next($request);
    }
}
