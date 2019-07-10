<div class="popup popup-login">
   <div class="content-block">
      <h4>MASUK</h4>
      <div class="loginform">
         <form id="LoginForm" method="post">
            <input type="text" name="Username" value="" class="form_input required" placeholder="Email" />
            <input type="password" name="Password" value="" class="form_input required" placeholder="Kata Sandi" />
            <div class="forgot_pass"><a href="#" data-popup=".popup-forgot" class="open-popup">Lupa Kata Sandi?</a></div>
            <input type="submit" name="submit" class="form_submit" id="submit" value="Masuk" />
         </form>
         <div class="signup_bottom">
            <p>Belum Punya Akun?</p>
            <a href="#" data-popup=".popup-signup" class="open-popup">DAFTAR GRATIS</a>
         </div>
      </div>
      <div class="close_popup_button">
          <a href="#" class="close-popup" data-popup=".popup-login">
              <img src="{{ asset('/frontsite/images/icons/black/menu_close.png') }}"/>
          </a>
      </div>
   </div>
</div>