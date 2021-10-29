<?php

namespace App\Http\Controllers\api\auth;

use Illuminate\Http\Request;
use App\Http\traits\apiTrait;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\NewPasswordRequest;
use App\Http\Requests\VerifyEmailRequest;



class Passwordcontroller extends Controller
{
    use apiTrait;


    public function verifyEmail(VerifyEmailRequest $request)
    {
        $user = User::where('email', $request->email)->first();
        $token = 'Bearer  ' .  $user->createToken($request->device_name)->plainTextToken;
        $user->token = $token;
        return $this->returnData(compact('user'), ' email  found ');
    }

    public function setNewPassword(NewPasswordRequest $request)
    {
        $userAuth = Auth::guard('sanctum')->user();
        $user = User::find($userAuth->id);
        $user->password = Hash::make($request->password);
        $user->save();
        $user->token = $request->header('Authorization');
        return $this->returnData(compact('user'), 'password resst');
    }
}
