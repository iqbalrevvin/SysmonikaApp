<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SyncDataController extends Controller
{
    public function index()
    {
        return view('app.sync.index');
    }
}
