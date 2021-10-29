<?php

namespace App\Http\Controllers\api\auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\User;
use Illuminate\Support\Facades\Auth;
use App\Http\traits\apiTrait;

class EmailVierficationcontroller extends Controller
{
    use apiTrait;
    public function sendCode(Request $data)
    {
        return $this->shortCode('code', rand(10000, 99999), 'mail sent successfully', $data);
    }
    public function verify(Request $data)
    {
        return $this->shortCode('email_verified_at', date('Y-m-d H:i:s'), 'mail verify successfully', $data);
    }
    private function  shortCode($updatedColumn, $updatedValue, $message, $data)
    {
        $token = $data->header('Authorization');
        $authUser = Auth::guard('sanctum')->user();
        $user = User::find($authUser->id);
        $user->{$updatedColumn} = $updatedValue;
        $user->save();
        $user->token = $token;
        return $this->returnData(compact('user'), $message);
    }
}
