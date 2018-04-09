<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Sentinel;
use App\Http\Requests\SignInRequest;

class SignInController extends Controller
{
    public function getSignOutPage()
    {
        // Sentinel::logout(null, true);
        Sentinel::logout();
        return redirect()->route('feSignInPage');
    }

    public function getSignInPage()
    {
        return view('Auth.Signin');

    }

    public function postSignInPage(SignInRequest $request)
    {

        $login = Sentinel::authenticate($request->all());
        if( $login )
        {
            Sentinel::login($login);

            // if( Sentinel::getUser()->inRole('admin') )
            return redirect()->route('beDashboard');
        }
        else
        {
            return redirect()->back()->with('error_message', 'Invalid Login Credentials');
        }
    }
}
