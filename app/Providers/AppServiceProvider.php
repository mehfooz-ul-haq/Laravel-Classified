<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Ad;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('FrontEnd.partials.sidebar', function($view)
        {
            $ad = Ad::where('expires_at', '>=', date('Y-m-d'))->inRandomOrder()->first();
            if( !$ad )
                return false;

            $view->with('sideAd', $ad);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
