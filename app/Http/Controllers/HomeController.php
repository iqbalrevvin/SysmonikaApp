<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Responden;
use Jenssegers\Agent\Agent;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $agent = new Agent();
        $responden = Responden::where('user_id', app('VoyagerAuth')->user()->id)->first();
        $id = 2;
        if (app('VoyagerAuth')->user()->role_id == $id) {
            if ($agent->isMobile()) {
               return view('app/home',[
                    'responden' => $responden,
                    'agent' => $agent,
                ]); 
            }else{
                return view('app/nomobile');
            }
            
            //return redirect('/home');
        }else{
            return redirect('/admin');
        }
    }

}
