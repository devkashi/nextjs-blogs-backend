<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;

class BaseController extends Controller
{ /**
    * success response method.
    *
    * @param $result
    * @param $message
    * @return \Illuminate\Http\JsonResponse
    */

   public function sendResponse($result, $message)
   {
       $response = [
           'success' => true,
           'data' => $result,
           'message' => $message,
       ];
       return response()->json($response, 200);
   }

   
   /**
    * return error response.
    *
    * @param $error
    * @param array $errorMessages
    * @param int $code
    * @return \Illuminate\Http\JsonResponse
    */
   public function sendError($error, $errorMessages = [], $code = 200)
   {
       $response = [
           'success' => false,
           'message' => $error,
       ];

       if (!empty($errorMessages)) {
           $response['data'] = $errorMessages;
       }

       return response()->json($response, $code);
   }
}

