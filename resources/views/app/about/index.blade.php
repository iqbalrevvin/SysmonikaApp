@extends('app.master-app')

@section('content')
	<div class="section featured center grey lighten-5">
	  <h2 class="heading">Tentang SysmonikaApp</h2>
	  <p>SysmonikaApp adalah aplikasi yang diperuntukan untuk pengecekan validitas KTP Masyarakat serta deikembangkan dengan fitur-fitur yang mampu mempermudah masyarakat dalam hubungan antar lingkungan disdukcapil. </p>
	  <img src="{{ asset('frontsite/img/material.jpg') }}" alt="SysmonikaApp">
	</div>

    <!-- Slider -->         
    <div class="swiper-container testimonials">
      <div class="swiper-wrapper">
        <div class="swiper-slide center">
          <img src="{{ asset('frontsite/images/team/analis.jpeg') }}" alt="Analis" class="avatar">
          <h6 class="m-0">M. Rafiq Saputra</h6>
          <p class="small">Desain Sistem</p>
        </div>
        <div class="swiper-slide center">
          <img src="{{ asset('frontsite/images/team/developer.jpeg') }}" alt="Developer" class="avatar">
          <h6 class="m-0">M. Iqbal</h6>
          <p class="small">Developer</p>
        </div>
        {{-- <div class="swiper-slide center">
          <img src="img/user6.jpg" alt="" class="avatar">
          <h6 class="m-0">Dora Moore</h6>
          <p class="small">Illustrator, Arque</p>
        </div> --}}
      </div>
      <!-- Add Pagination -->
      <div class="swiper-pagination"></div>
    </div>
    <!-- End of Slider -->
@endsection