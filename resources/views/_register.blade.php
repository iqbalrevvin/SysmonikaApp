<div class="popup popup-signup">
   <div class="content-block">
      <h4>DAFTAR</h4>
      <div class="loginform">
         <form id="RegisterForm" method="post">
            <input type="text" name="name" value="" class="form_input required" placeholder="Nama Anda" />
            <input type="text" name="Email" value="" class="form_input required" placeholder="Email" />
            <input type="password" name="Password" value="" class="form_input required" placeholder="Kata Sandi" />
            <input type="password" name="Password" value="" class="form_input required" placeholder="Konfirmasi Kata Sandi" />
            <input type="submit" name="submit" class="form_submit" id="submitregister" value="DAFTAR" />
         </form>
         {{-- <h5>- OR REGISTER WITH A SOCIAL ACCOUNT -</h5>
         <div class="signup_social">
            <a href="http://www.facebook.com/" class="signup_facebook">FACEBOOK</a>
            <a href="http://www.twitter.com/" class="signup_twitter">TWITTER</a>            
         </div> --}}
      </div>
      <div class="close_popup_button">
          <a href="#" class="close-popup" data-popup=".popup-signup">
              <img src="{{ asset('/frontsite/images/icons/black/menu_close.png') }}"  />
          </a>
      </div>
   </div>
</div>