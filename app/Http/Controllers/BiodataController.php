<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Responden;
use App\Job;
class BiodataController extends Controller
{
    
     public function index()
    {
        $jobs = Job::orderBy('name', 'asc')->get();
        $responden = Responden::where('user_id', app('VoyagerAuth')->user()->id)->first();
        return view('app.biodata.index',[
            'responden' => $responden,
            'job' => $jobs
        ]);
    }

    public function update(Request $request)
    {
        //dd($request->all());
        $this->validate($request,[
            'nama' => 'required|min:5',
            //'nik' => 'required|min:16|max:16|unique:respondens',
        ]);
        // $responden = Responden::find(26);
        // $responden->update($request->all());
        $update = Responden::where('user_id', app('VoyagerAuth')->user()->id)->first();
        $update->update($request->all());
        return redirect('home')->with('update_biodata', 'Terimakasih Telah Memperbarui Biodata Anda');
    }
}
