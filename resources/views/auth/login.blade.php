{{-- @extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>
                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>
                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>
                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                {{ __('Login') }}
                                </button>
                                @if (Route::has('password.request'))
                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                                @endif
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection --}}
@extends('app.master-login')
@section('content')
<!-- Main Container -->
@php
use Jenssegers\Agent\Agent;
$agent = new Agent();
@endphp
@if ($agent->isMobile())
    <div id="main" class="main">
        <!-- Toolbar -->
        <div id="toolbar" class="primary-color tool-login">
            {{-- <div class="open-left" id="open-left" data-activates="slide-out-left">
                <i class="ion-android-menu white-text"></i>
            </div> --}}
        </div>
        <!-- End of Toolbar -->
        <!-- Page Contents -->
        <div class="page fullscreen grey lighten-4">
            <form method="POST" action="{{ route('login') }}">
                @csrf
                <div class="login-form z-depth-1">
                    <h1>Login Akun</h1>
                    @error('email')
                        <span class="helper-text red-text" ><small>{{ $message }}</small></span><br>
                    @enderror
                    <div class="input-field">
                        <i class="ion-android-contact prefix"></i>
                        <input type="email" class="validate @error('email') invalid @enderror" id="email" name="email" placeholder="Email" 
                            value="{{ old('email') }}" autofocus>
                        {{-- <label for="login">Email / Nama Pengguna</label> --}}
                    </div>
                    @error('password')
                        <span class="helper-text red-text"><small>{{ $message }}</small></span><br>
                    @enderror
                    <div class="input-field" style="margin-bottom:20px;">
                        <i class="ion-android-lock prefix"></i>
                        <input type="password" class="validate @error('password') invalid @enderror" id="password" name="password">
                        <label for="login-psw">Kata Sandi</label>
                        <div class="progress" style="display:none ;">
                         <div class="indeterminate"></div>
                        </div>
                    </div>
                    {{-- <a class="waves-effect waves-light btn-large teal-color block m-b-20 animated bouncein delay-2" href="index.html">    Login
                    </a> --}}
                    <button type="submit" class="btn waves-effect waves-light btn-small teal-color block m-b-20 animated bouncein delay-2">
                        {{ __('Login') }}
                    </button>
                    <span>Belum Punya Akun? <a class="primary-text" href="{{ url('register') }}">Daftar Akun</a></span>
                    <br>
                    @if (Route::has('password.request'))
                        <span><a class="primary-text" href="{{ route('password.request') }}">Lupa Kata Sandi</a></span>
                    @endif
                    <hr>
                    <span class="center-align"><a class="primary-text " href="{{ url('') }}">Kembali Ke Halaman Informasi</a></span>
                </div>
            </form>
        </div>
        <!-- End of Page Contents -->
        <!-- End of Sidebars -->
    </div>
@else
    <script>
        window.location.href = '{{url("/")}}';
    </script>
@endif


@section('custom_script')
    <script>
        $("form").submit(function(){
          $(".progress").show();
          $("#btn_login").addClass('disabled');
        });
    </script>
@endsection
<!-- End of Main Container -->
@endsection