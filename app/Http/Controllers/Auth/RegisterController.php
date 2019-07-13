<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Responden;
use App\StatusCode;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'nik' => ['required','min:16', 'max:16', 'unique:respondens']
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $user =  User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
        $responden = Responden::create([
            'nama' => $data['name'],
            'user_id' => $user->id,
            'nik' => $data['nik'],
            'status_code'
        ]);
   
        // $email = $data['email'];
        // $message_data = ['email' => $data['email'],'name' => $data['name']];
        // Mail::send('email.register',$message_data,function($message) use($email){
        //     $message->to($email)->subject('REGISTRASI SYSMONIKA APP');
        // });
        // return redirect('/')->with('sukses', 'Data Berhasil Di Input!');
        return $user;
    }
}
