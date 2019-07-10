<!DOCTYPE html>
<html lang="en">
   <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, minimal-ui">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png" />
        <link rel="apple-touch-startup-image" href="images/apple-touch-startup-image-640x920.png">
        <meta http-equiv="X-UA-Compatible"  content="IE=edge" />
        <meta property="og:url"             content="" />
        <meta property="og:type"            content="website"/>
        <meta property="og:title"           content="" />
        <meta property="og:description"     content=""/>
        <meta property="og:image"           content="">
        <meta http-equiv="X-UA-Compatible"  content="IE=edge" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="theme-color" content="##00FFFF">
        <title>{{ setting('site.title') }}</title>
        <link rel="stylesheet" href="{{ asset('/frontsite/css/swiper.css') }}">
        <link rel="stylesheet" href="{{ asset('/frontsite/style.css') }}">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,900" rel="stylesheet">

        @php
          $admin_favicon = Voyager::setting('site.logo', '');
        @endphp
        @if($admin_favicon == '')
            <link rel="shortcut icon" href="{{ voyager_asset('images/logo-icon.png') }}" type="image/png">
        @else
            <link rel="shortcut icon" href="{{ Voyager::image(setting('site.logo')) }}" type="image/png">
        @endif
   </head>
    <body id="mobile_wrap">

    
    <!--CONTENT-->
        @yield('content')
    <!--END CONTENT-->   

    <script src="{{ asset('/frontsite/js/jquery-3.3.1.min.js') }}"></script>
    <script src="{{ asset('/frontsite/js/jquery.validate.min.js') }}" ></script>
    <script src="{{ asset('/frontsite/js/swiper.min.js') }}"></script>
    <script src="{{ asset('/frontsite/js/jquery.custom.js') }}"></script>
    <script src="{{ asset('/frontsite/js/index.umd.min.js') }}"></script>
    <script>
    /* global PullToRefresh */
    @yield('pulltorefresh')
      PullToRefresh.init({
        mainElement: '#mobile_wrap',
        onRefresh: function(){
            location.reload();
        }
      });
        var isMobile = {
            Android: function() {
                return navigator.userAgent.match(/Android/i);
            },
            BlackBerry: function() {
                return navigator.userAgent.match(/BlackBerry/i);
            },
            iOS: function() {
                return navigator.userAgent.match(/iPhone|iPad|iPod/i);
            },
            Opera: function() {
                return navigator.userAgent.match(/Opera Mini/i);
            },
            Windows: function() {
                return navigator.userAgent.match(/IEMobile/i);
            },
            any: function() {
                return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
            }
        };
        // if(isMobile.any()){
        //  alert('Mobile');
        // }else{
        //  alert('Dekstop');
        //  window.location.replace("http://www.w3schools.com");
        // } 

      </script>
   </body>
</html>