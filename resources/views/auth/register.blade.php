{{-- @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

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
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
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
    <div id="main" class="main">

      <!-- Toolbar -->
      <div id="toolbar" class="primary-color tool-login">
         <div class="progress" style="display: none;">
              <div class="indeterminate"></div>
          </div>
      </div>
      <!-- End of Toolbar -->

      <!-- Page Contents -->
      <div class="page fullscreen grey lighten-4">
        <div class="login-form z-depth-1">
          <h1>Daftar Akun</h1>
          <form method="POST" action="{{ route('register') }}">
            @csrf
            @error('name')
                <span class="helper-text red-text"><small>{{ $message }}</small></span><br>
            @enderror
            <span class="helper-text" >Nama Lengkap</span>
            <div class="input-field">
              <i class="ion-ios-pricetag prefix"></i> 
              <input class="@error('name') invalid @enderror" type="text" 
                    name="name" placeholder="Nama Lengkap" value="{{ old('name') }}" id="name" required autofocus> 
              {{-- <label for="login">Nama Lengkap</label> --}}
            </div>

            @error('nik')
                <span class="helper-text red-text"><small>{{ $message }}</small></span><br>
            @enderror
            <span class="helper-text" data-error="wrong" data-success="right">NIK</span>
            <div class="input-field">
              <i class="ion-document-text prefix"></i> 
              <input class="validate @error('nik') invalid @enderror" type="number" name="nik" 
                placeholder="NIK" value="{{ old('nik') }}" id="nik" required> 
              {{-- <label for="login">NIK</label> --}}
            </div>

            @error('email')
                <span class="helper-text red-text" ><small>{{ $message }}</small></span><br>
            @enderror
            <span class="helper-text" data-error="wrong" data-success="right">Email</span>
            <div class="input-field">
              <i class="ion-ios-email prefix"></i> 
              <input class="validate @error('email') invalid @enderror" type="email" name="email" 
                placeholder="Email" value="{{ old('email') }}" id="email" required> 
              {{-- <label for="login">Email</label> --}}
            </div>

            @error('password')
                <span class="helper-text red-text" ><small>{{ $message }}</small></span><br>
            @enderror
            <span class="helper-text" >Kata Sandi</span>
            <div class="input-field" style="margin-bottom:20px;">
              <i class="ion-android-lock prefix"></i> 
              <input class="@error('password') invalid @enderror" type="password" 
              name="password" id="password" placeholder="Kata Sandi"> 
              {{-- <label for="login-psw">Kata Sandi</label> --}}
            </div>

            <span class="helper-text" >Konfirmasi Kata Sandi</span>
            <div class="input-field" style="margin-bottom:20px;">
              <i class="ion-android-lock prefix"></i> 
              <input class="" type="password" name="password_confirmation" 
              id="password-confirm" placeholder="Konfirmasi Kata Sandi"> 
              {{-- <label for="login-psw">Konfirmasi Kata Sandi</label> --}}
              <div class="progress" style="display:none ;">
                <div class="indeterminate"></div>
              </div>
            </div>
          {{-- <a class="waves-effect waves-light btn-large accent-color block m-b-20 animated bouncein delay-2" href="index.html">Login</a>  --}}
            <button class="btn waves-effect waves-light btn-small blue-color block m-b-20 animated bouncein delay-2" 
                type="submit" id="btn_register">
                DAFTAR
            </button>

        </form>
          <span>Sudah Punya Akun? <a class="primary-text" href="{{ url('login') }}">Login Akun</a></span>
          
        </div>
      </div> 

      <!-- End of Page Contents -->
      <!-- End of Sidebars -->
    </div>
    <!-- End of Main Container -->
    @section('custom_script')
        <script>
            $("form").submit(function(){
              $(".progress").show();
              $("#btn_register").addClass('disabled');
            });
        </script>
    @endsection
@endsection
