@component('mail::message')

<p><b>Terimakasih Telah Mendaftar Di SysmonikaApp!!</b></p>
<p>Silahkan klik tombol <b>Verfikasi Akun</b> dibawah untuk dapat menggunakan SysmonikaApp dengan penuh.</p>

@component('mail::button', ['url' => $url])
	Verifikasi Akun
@endcomponent
<p>Gunakan aplikasi dengan bijak! :)</p>

Salam,<br>
{{ config('app.name') }}

@endcomponent