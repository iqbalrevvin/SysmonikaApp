{{-- @extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>
                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
                    You are logged in!
                    {{ Auth::user()->role_id }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
--}}
@extends('frontsite.master-app')
@section('content')  
    <!-- End of Slider -->
    <!-- First Section -->

    <div class="section center animated">
        {{-- <i class="ion-aperture infograph"></i> --}}
        <h2 class="heading">Selamat Datang<br>{{ $responden->nama }}</h2>
        <p>Berikut adalah informasi dari data & status KTP anda saat ini, jika status masih pending dimohon untuk menunggu sistem kami memperbarui status KTP anda.</p>
    </div>
    <!-- Second Section -->
    <div class="activities">
        <div class="activity animated fadeinright delay-3">
          <p>Data Identitas</p>
          <span class="activity-time small grey-text">
                <i class="ion-android-list"></i> 
                <span class="">Nama : {{ $responden->nama }}</span>
                <br>
                <i class="ion-android-list"></i> 
                <span class="">NIK : {{ $responden->nik }}</span>
          </span>
          <span class="activity-type"><i class="ion-ios-person"></i></span>
        </div>

        <!-- Activity -->
        <div class="activity animated fadeinright delay-5">
          <p>Status KTP</p>
          <span class="activity-time small grey-text">
                <i class="ion-card"></i> 
                <span class="">No. KTP/NIK : {{ $responden->nik }}</span>
          </span>
          <br>
          <span class="activity-time small grey-text">
                <i class="ion-card"></i> 
                <span class="">Status KTP : <b>{{ $responden->statusKTP() }}</b></span>
          </span>
          <span class="activity-type">
              <i class="ion-card"></i>
          </span>
        </div>
    </div>
      <!-- Activity -->
      
@endsection


@section('custom_script')
    <script>
        $(document).ready(function(){
    $('.fixed-action-btn').floatingActionButton();
  });
    </script>
@endsection