@extends('frontsite.master-welcome')

@section('content')
  <div class="panel-overlay"></div>
  <div class="views">
     <div class="view view-main">
        <div class="pages">
           <div data-page="index" class="page homepage">
              <div class="page-content">
                 <div class="navbar navbar--fixed navbar--fixed-top">
                    <div class="navbar__col navbar__col--title">
                       <a href="index.html">{{ setting('site.title') }}</a>
                    </div>
                 </div>

                 <!-- Slider -->
                 <div class="swiper-container slidertoolbar">
                    <div class="swiper-wrapper">
                       <div class="swiper-slide" style="background-image:url({{ asset('/frontsite/images/slide1.jpg') }});">
                          <div class="slider-caption">
                             <h2 data-swiper-parallax="-100%">{{ setting('site.slide-1-title') }}</h2>
                             <p data-swiper-parallax="-30%">{{ setting('site.slide-1-description') }}</p>
                             <a href="{{ url('login') }}" class="slider-caption__more">
                                LOGIN
                             </a>
                          </div>
                       </div>
                       <div class="swiper-slide" style="background-image:url({{ asset('/frontsite/images/slide2.jpg') }});">
                          <div class="slider-caption">
                             <h2 data-swiper-parallax="-100%" class="title--white">{{ setting('site.slide-2-title') }}</h2>
                             <p data-swiper-parallax="-30%" class="text--white">{{ setting('site.slide-2-description') }}</p>
                             <a href="{{ url('register') }}" class="slider-caption__more">DAFTAR</a>
                          </div>
                       </div>
                       <div class="swiper-slide" style="background-image:url({{ asset('/frontsite/images/slide3.jpg') }});">
                          <div class="slider-caption">
                             <h2 data-swiper-parallax="-100%" class="title--white">{{ setting('site.slide-3-title') }}</h2>
                             <p data-swiper-parallax="-30%" class="text--white">{{ setting('site.slide-3-description') }}</p>
                             <a href="about.html" class="slider-caption__more" data-swiper-parallax="-60%">SELENGKAPNYA</a>
                          </div>
                       </div>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                 </div>
                 <div class="swiper-container-toolbar swiper-toolbar">
                    <div class="swiper-pagination-toolbar"></div>
                       <div class="swiper-slide toolbar-icon">
                            <a href="tel:{{ setting('site.call_center') }}" >
                              <img src="{{ asset('/frontsite/images/icons/blue/phone.png') }} "/>
                            </a>
                            <a href="#"></a>
                            <a href="#" data-popup=".popup-social" class="open-popup">
                                <img src="{{ asset('/frontsite/images/icons/blue/user.png') }} " alt="Login/Register" title="Login/Register" />
                            </a>
                            <a href="#"></a>
                            <a href="{{ url('contact_us') }}"><img src="{{ asset('/frontsite/images/icons/blue/contact.png') }} " alt="" title="" /></a>
                       </div>
                    </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
       <!-- Social Icons Popup -->
      <div class="popup popup-social">
        <div class="content-block">
          <h4>Login/Daftar</h4>
          <p>Login dengan akun yang sudah terdaftar atau daftarkan akun dengan gmail anda untuk dapat menggunakan aplikasi.</p>
          <ul class="social_share">
          <li>
            <a href="{{ url('login') }}">
              <img src="{{ asset('/frontsite/images/icons/black/lock.png') }}"/>
              <span>LOGIN</span>
            </a>
          </li>
          <li>
            <a href="{{ url('register') }}">
              <img src="{{ asset('/frontsite/images/icons/black/user.png') }}"/>
              <span>DAFTAR</span>
            </a>
          </li>
          <li>
            <a href="{{ url('contact_us') }}">
              <img src="{{ asset('/frontsite/images/icons/black/mobile.png') }}"/>
              <span>HUBUNGI KAMI</span>
            </a>
          </li>
          
          </ul>
          <div class="close_popup_button">
            <a href="{{ url('contact_us') }}" class="close-popup" data-popup=".popup-social">
              <img src="{{ asset('frontsite/images/icons/black/menu_close.png') }}" />
            </a>
          </div>
        </div>
      </div>
      <!-- Login Popup -->
      @include('_login')
      <!-- Register Popup -->
      @include('_register')
      <!-- Forgot Password Popup -->
      @include('_forgotpass')
  
@endsection
   
 