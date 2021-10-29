<?php

namespace App\Http\traits;

trait apiTrait
{
    public function returnMessageSuccess($message = "", $code = 200)
    {
        return response()->json([
            'message' => $message,
            'errors' => (object)[],
            'data' => (object)[]
        ], $code);
    }
    public function returnMessageError($message = "", $code = 422)
    {
        return response()->json([
            'message' => $message,
            'errors' => (object)[],
            'data' => (object)[]
        ], $code);
    }
    public function returnData(array $data, $message = "", $code = 200)
    {
        return response()->json([
            'message' => $message,
            'errors' => (object)[],
            'data' => $data
        ], $code);
    }
}
