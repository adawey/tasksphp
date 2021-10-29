<?php

namespace App\Http\Controllers\api\auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\RegisterRequest;
use App\Models\User;
use App\Http\traits\apiTrait;

class Registercontroller extends Controller
{
    use apiTrait;
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(RegisterRequest $request)
    {
        $data =  $request->validated();
        $data['password'] =  Hash::make($request->password);
        $createdUser = User::create($data);
        $createdUser->token = 'Bearer  ' . $createdUser->createToken($request->device_name)->plainTextToken;
        return $this->returnData(compact('createdUser'), 'register done');
    }
}
