<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserConstroller extends Controller
{
    //

    public function user(Request $request)
    {
        return $request->user();
    }
}