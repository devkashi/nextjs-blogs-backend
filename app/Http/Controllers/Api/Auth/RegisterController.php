<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class RegisterController extends BaseController
{


    public function login(Request $request)
    {
        // Validate input
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);
        // return response()->json($request->all());
        // Attempt to authenticate the user
        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid login credentials',
            ], 401);
        }

        // Generate token for the authenticated user
        $user = Auth::user();
        $token = $user->createToken('auth_token');

        // Return success response with token
        return response()->json(data: [
            'success' => true,
            'message' => 'Login successful',
            'token' => $token->accessToken,
            'user' => $user,
        ], status: 200);
    }
}
