@extends('app.master-app')

@section('content')
	<div class="section center animated">
        <i class="ion-android-sync infograph animated bounceInDown delay-5"></i>
        <h2 class="heading">Sinkronisasi Data</h2>
        <p>Sinkronisasi Data adalah fitur untuk mensinkronkan data dengan cara menarik data anda di database disdukcapil.</p>
    </div>

    <div class="swiper-container testimonials">
      	<div class="swiper-wrapper">
        	<div class="swiper-slide center">
        		<p class="testimonial">Fitur Akan Tersedia Di Versi 0.92, sabar ya :)</p>
          		<img src="{{ asset('frontsite/images/team/analis.jpeg') }}" alt="Analis" class="avatar">
          		<h6 class="m-0">M. Rafiq Saputra</h6>
          		<p class="small">Desain Sistem</p>
       	 	</div>
    	</div>
    </div>
@endsection