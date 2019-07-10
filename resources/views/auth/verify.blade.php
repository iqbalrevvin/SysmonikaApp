{{-- @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Verify Your Email Address') }}</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('A fresh verification link has been sent to your email address.') }}
                        </div>
                    @endif

                    {{ __('Before proceeding, please check your email for a verification link.') }}
                    {{ __('If you did not receive the email') }}, <a href="{{ route('verification.resend') }}">{{ __('click here to request another') }}</a>.
                </div>
            </div>
        </div>
    </div>
</div>
@endsection --}}

@extends('app.master-login')

@section('style_custom')
    
@endsection


@section('content')

<!-- Main Container -->
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
            <div class="login-form z-depth-1">
            @if (session('resent'))
                <div class="msg msg-alert z-depth-2 scale-transition valign center"> 
                    Email Terbaru Berhasil Dikirim.<br>Silahkan Periksa Email! 
                </div>
            @endif
                <h1>Verifikasi Akun Email</h1>
                <p>Sebelum melanjutkan, Silahkan periksa email yang telah anda daftarkan.</p>
                <p>Pastikan email yang anda daftarkan adalah email yang valid.</p>
                <span>Belum Menerima Email? <a class="primary-text" href="{{ route('verification.resend') }}">Kirim Ulang</a></span>
                <br>
                <div class="progress" style="display:none;">
                    <div class="indeterminate"></div>
                </div>
                <hr>
                <span class="center-align"><a class="primary-text " href="{{ url('') }}">Kembali Ke Halaman Informasi</a></span>
            </div>

    </div>
    <!-- End of Page Contents -->
    <!-- End of Sidebars -->
</div>
@section('custom_script')
    <script>
        $("a").click(function(){
          $(".progress").show();
          // $("#btn_login").addClass('disabled');
        });
    </script>
@endsection
<!-- End of Main Container -->
@endsection