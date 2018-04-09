<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Sentinel;
use App\Http\Requests\RegisterRequest;

class RegisterController extends Controller
{

    public function getRegisterPage()
    {
    	return view('FrontEnd.Auth.Register')->with(['has_footer' => false]);
    }

    public function postRegisterPage(RegisterRequest $request)
    {
        $user = Sentinel::registerAndActivate($request->all());
        if( $user )
        {
            $role = Sentinel::findRoleBySlug('user');
            $role->users()->attach($user);
            Sentinel::login($user);
            return redirect()->route('FeAccountPage');
        }
    }
}
