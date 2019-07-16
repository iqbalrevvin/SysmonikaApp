<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
class ContactController extends Controller
{
    public function index()
    {
        return view('contact_us');
    }

    public function send(Request $request)
    {
        $this->validate($request,[
            'name' => 'required|min:3',
            'email' => 'email',
            'handphone' => 'numeric'
        ]);
        
        $send = Contact::create($request->all());
        return redirect('/contact_us')->with('terkirim', 'Terimakasi Telah Menghubungi Kami, Pesan Anda Sudah Terkirim :)');
    }
}
