<?php

namespace App\Http\Controllers\api\auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\traits\apiTrait;
use App\Http\Requests\LoginRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;


class Logincontroller extends Controller
{
    use apiTrait;
    public function login(LoginRequest $request)
    {
        $user = User::where('email', $request->email)->first();


        if (!$user || !Hash::check($request->password, $user->password)) {
            return $this->returnMessageError(compact('user'), 'user email not found ');
        }

        $token = 'Bearer  ' .  $user->createToken($request->device_name)->plainTextToken;
        $user->token = $token;

        if (!$user->email_verified_at) {
            return $this->returnMessageError(compact('user'), 'user not email_verified', 401);
        }
        return $this->returnData(compact('user'));
    }

    public function logout(Request $request)
    {
        $user = Auth::guard('sanctum')->user();
        $token = $request->header('Authorization');
        $explodArray = explode('|', $token);
        $idToken = str_replace("Bearer  ", "", $explodArray[0]);
        $user->tokens()->where('id', $idToken)->delete();
        return $this->returnMessageSuccess('log out ');
    }


    public function logoutAll(Request $request)
    {
        $user = Auth::guard('sanctum')->user();
        $token = $request->header('Authorization');
        $explodArray = explode('|', $token);
        $idToken = str_replace("Bearer  ", "", $explodArray[0]);
        $user->tokens()->delete();
        return $this->returnMessageSuccess('log out ');
    }
}
