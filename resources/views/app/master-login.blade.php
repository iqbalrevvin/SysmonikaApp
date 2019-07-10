<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ setting('site.title') }}</title>
    <meta name="description" content="Material Design Mobile Template">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
    
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/touch/apple-touch-icon-144x144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/touch/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/touch/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="img/touch/apple-touch-icon-57x57-precomposed.png">
    <link rel="shortcut icon" sizes="196x196" href="img/touch/touch-icon-196x196.png">
    <link rel="shortcut icon" href="img/touch/apple-touch-icon.png">
    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="img/touch/apple-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#222222">
    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <!-- SEO: If mobile URL is different from desktop URL, add a canonical link to the desktop page -->
    <!--
    <link rel="canonical" href="http://www.example.com/" >
    -->
    <!-- For iOS web apps. Delete if not needed. https://github.com/h5bp/mobile-boilerplate/issues/94 -->
    <!--
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="">
    -->
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,100' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
    <!-- Icons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" media="all" rel="stylesheet" type="text/css">
    <!-- Stylesheets -->
    <link rel="stylesheet" href="{{ asset('frontsite/css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/materialize.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/swipebox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/swiper.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/normalize.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/main.css') }}">
    @yield('style_custom')
    <script src="{{ asset('frontsite/js/vendor/modernizr-2.7.1.min.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
  </head>
  <body>
    
    @yield('content')
    <!-- Scripts -->
    <script src="{{ asset('frontsite/js/vendor/jquery-2.1.0.min.js') }}"></script>
{{--     <script src="{{ asset('frontsite/js/helper.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/HeadsUp.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/jquery.smoothState.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/chart.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/jquery.mixitup.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/jquery.swipebox.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/masonry.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/swiper.min.js') }}"></script> --}}
    <script src="{{ asset('frontsite/js/vendor/materialize.min.js') }}"></script>
{{--     <script src="{{ asset('frontsite/js/main.js') }}"></script> --}}
    @yield('custom_script')
  </body>
</html>