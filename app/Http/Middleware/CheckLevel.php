<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckLevel
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next, ...$akses)
    {
        // superadmin,director,manager,asistent,staff,customer
        if ($request->user()->akses == 'superadmin' || $request->user()->akses == 'admin' || $request->user()->akses == 'user') {
            return $next($request);
        }
        return redirect('/');

    }
}
