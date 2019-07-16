@extends('frontsite.master-welcome')

@section('content')
    <div class="panel-overlay"></div>
    <div class="views">
        <div class="view view-main">
            <div class="pages">
                <div data-page="blogsingle" class="page">
                    <div class="page-content">
                        <a href="{{ url('') }}" class="backto">
                            <img src="{{ asset('/frontsite/images/icons/black/back.png') }}"  />
                        </a>
                        <div id="pages_maincontent">
                            <h2 class="page_title">HUBUNGI KAMI</h2>
                            <div class="page_single layout_fullwidth_padding"> 
                                  @if (session('terkirim'))
                                    <h4>{{ session('terkirim') }}</h4>
                                  @endif   
                                
                                <div class="contactform">
                                    <form id="ContactForm" method="post" action="{{ route('contact.send') }}">
                                      @csrf
                                      <label>Nama Lengkap:</label>
                                      <input type="text" name="name" id="name" class="form_input required" value="{{ old('name') }}" />
                                      <label>Email:</label>
                                      <input type="email" name="email" id="email" class="form_input required email" />
                                      <label>Telp/HP:</label>
                                      <input type="number" name="handphone" id="handphone" class="form_input required" value="{{ old('handphone') }}" />
                                      <label>Pesan:</label>
                                      <textarea name="message" id="message" class="form_textarea textarea required">{{ old('message') }}</textarea>
                                      <input type="submit" name="submit" class="form_submit" id="submit" value="Kirim" />

                                        <label id="loader" style="display:none;">
                                            <img src="{{ asset('frontsite/images/loader.gif') }}" alt="Loading..." id="LoadingGraphic" />
                                        </label>
                                  </form>
                                </div>    
                            <h3>Lokasi Kami</h3>
                          
                          {!! setting('site.embed_lokasi') !!}
                          
                          <blockquote>
                              {!!  setting('site.deskripsi_lokasi') !!}
                          </blockquote> 
                          
                          <a href="tel:{{ setting('site.call_center') }}" class="btn btn--full">Hubungi Kami Sekarang</a>   
                          
                          <div class="clear"></div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection
