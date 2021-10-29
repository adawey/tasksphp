<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Arr;
use Illuminate\Http\Request;
use App\Http\traits\apiTrait;

class AppApiKey
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
        if(! Arr::has($request->header(), 'API_SECURE') || config('app.API_SECURE') != $request->header()->('API_SECURE')){
            return $this->returnMessageError('invalid api ');
        }; 
        return $next($request);
    }
}
