<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Sentinel;

class PasswordController extends Controller
{
    public function getForgetPasswordPage()
    {
        return 'forget password';
        // return view("auth.forgetPassword");
    }

    public function postForgetPasswordPage(Request $request)
    {
        return 'send a link to email to reset password';
    }

    public function getResetPasswordPage()
    {
        return 'reset password';
        // return view("auth.resetPassword");
    }

}
