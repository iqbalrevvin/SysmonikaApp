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
                                <h2 id="Note"></h2>
                                <div class="contactform">
                                    <form class="" id="ContactForm" method="" action="">
                                      <label>Nama Lengkap:</label>
                                      <input type="text" name="nama" id="ContactName" class="form_input required" />
                                      <label>Email:</label>
                                      <input type="text" name="email" id="ContactEmail" class="form_input required email" />
                                      <label>Telp/HP:</label>
                                      <input type="text" name="hp" id="ContactPhone" class="form_input required email" />
                                      <label>Pesan:</label>
                                      <textarea name="pesan" id="ContactComment" class="form_textarea textarea required"></textarea>
                                      <input type="submit" name="submit" class="form_submit" id="submit" value="Send" />
                                     {{--  <button type="submit" name="submit" class="form_submit" id="submit" >Send</button> --}}
                                      <input class="" type="hidden" name="to"  value="youremail@yourwebsite.com" />
                                      <input class="" type="hidden" name="subject" value="Contacf form message" />
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
