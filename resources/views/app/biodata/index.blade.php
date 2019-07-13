@extends('app.master-app')

@section('content')

	<div class="section center animated">
        <i class="ion-person infograph animated bounceInDown delay-5"></i>
        <h2 class="heading">biodata<br>{{ $responden->nama }}</h2>
        <p>Isi biodata dengan lengkap untuk mempercepat proses pengecekan KTP serta pengajuan lainnya.</p>
    </div>
    @if (session('update_biodata'))
      <div class="msg msg-success z-depth-2 scale-transition valign center"> 
        {{ session('update_biodata') }}
      </div>
    @endif
    <!-- Form Inputs -->
    <form action="{{ route('biodata.update') }}" method="POST">
       @csrf
       <input type="hidden" name="_token" value="{{ csrf_token() }}">
      <div class="form-inputs p-20">
    	<span class="helper-text"><small>Nama</small></span>
        <div class="input-field animated fadeinright">
          <input id="nama" name="nama" type="text" value="{{ $responden->nama }}" class="validate">
        </div>
        <span class="helper-text"><small>NIK</small></span>
        <div class="input-field animated fadeinright delay-3">
          <input id="" name="" type="text" value="{{ $responden->nik }}" disabled>
        </div>
        <span class="helper-text"><small>Tempat Lahir</small></span>
        <div class="input-field animated fadeinright delay-4">
          <input id="tempat_lahir" name="tempat_lahir" type="text" class="validate" value="{{ $responden->tempat_lahir }}">
        </div>
      <span class="helper-text">Tanggal Lahir</span>
      <div class="input-field animated fadeinright delay-5">
        <input id="tanggal_lahir" name="tanggal_lahir" type="date" class="validate" value="{{ $responden->tanggal_lahir }}">
      </div>
      <span class="helper-text"><small>Jenis Kelamin</small></span>
      <div class="input-field animated fadeinright delay-5">
        <select class="browser-default" id="jenis_kelamin" name="jenis_kelamin">
          @if ($responden->jenis_kelamin == NULL)
            <option value="" disabled selected>Pilih Jenis Kelamin</option>
          @else
            <option value="{{ $responden->jenis_kelamin }}" disabled selected>{{ $responden->jenis_kelamin }}</option>
          @endif
          
          <option value="Laki-Laki">Laki-Laki</option>
          <option value="Perempuan">Perempuan</option>
      	</select>
      </div>
      <span class="helper-text">Alamat</span>
      <div class="input-field animated fadeinright delay-4">
        <input id="alamat" name="alamat" type="text" class="validate" value="{{ $responden->alamat }}">
      </div>
       <div class="row">
        <div class="input-field col s6">
          <span class="helper-text">RT</span>
          <input id="rt" name="rt" type="number" class="validate" value="{{ $responden->rt }}">
        </div>
        <div class="input-field col s6">
          <span class="helper-text">RW</span>
          <input id="rw" name="rw" type="number" class="validate" value="{{ $responden->rw }}">
        </div>
      </div>
     <span class="helper-text">Desa</span>
      <div class="input-field animated fadeinright delay-4">
        <input id="desa" name="desa" type="text" class="validate" value="{{ $responden->desa }}">
      </div>
       <span class="helper-text">Kecamatan</span>
      <div class="input-field animated fadeinright delay-4">
        <input id="kecamatan" name="kecamatan" type="text" class="validate" value="{{ $responden->kecamatan }}">
      </div>
      <span class="helper-text">Kabupaten</span>
      <div class="input-field animated fadeinright delay-4">
        <input id="kabupaten" name="kabupaten" type="text" class="validate" value="{{ $responden->kabupaten }}">
      </div>
      <span class="helper-text">Provinsi</span>
      <div class="input-field animated fadeinright delay-4">
        <input id="provinsi" name="provinsi" type="text" class="validate" value="{{ $responden->provinsi }}">
      </div>
     <span class="helper-text"><small>Agama</small></span>
      <div class="input-field animated fadeinright delay-5">
        <select class="browser-default" name="agama">
          @if ($responden->agama == NULL)
            <option value="" disabled selected>Pilih Agama</option>
          @else
            <option value="{{ $responden->agama }}" disabled selected>{{ $responden->agama }}</option>
          @endif
          <option value="Islam">Islam</option>
          <option value="Kriste">Kristen</option>
          <option value="Khatolik">Khatolik</option>
          <option value="Budha">Budha</option>
          <option value="Hindu">Hindu</option>
        </select>
      </div>
      <span class="helper-text"><small>Status Perkawinan</small></span>
      <div class="input-field animated fadeinright delay-5">
        <select class="browser-default" name="status_perkawinan">
          @if ($responden->status_perkawinan == NULL)
            <option value="" disabled selected>Pilih Status Perkawinan</option>
          @else
            <option value="{{ $responden->status_perkawinan }}" disabled selected>{{ $responden->status_perkawinan }}</option>
          @endif
          <option value="Kawin">Kawin</option>
          <option value="Belum Kawin">Belum Kawin</option>
          <option value="Cerai Mati">Cerai Mati</option>
          <option value="Cerai hidup">Cerai hidup</option>
        </select>
      </div>
      <span class="helper-text"><small>Pekerjaan</small></span>
      <div class="input-field animated fadeinright delay-5">
        <select class="browser-default" name="pekerjaan">
          @if ($responden->pekerjaan == NULL)
            <option value="" disabled selected>Pilih Pekerjaan</option>
          @else
            <option value="{{ $responden->pekerjaan }}" disabled selected>{{ $responden->pekerjaan }}</option>
          @endif
          @forelse ($job as $job)
            <option value="{{ $job->name }}">{{ $job->name }}</option>
          @empty
            <option value="-">Data Pekerjaan Tidak Tersedia</option>
          @endforelse
        </select>
      </div>
      <span class="helper-text"><small>Kewarganegaraan</small></span>
      <div class="input-field animated fadeinright delay-5">
        <select class="browser-default" name="kewarganegaraan">
        @if ($responden->kewarganegaraan == NULL)
          <option value="" disabled selected>Pilih Kewarganegaraan</option>
        @else
          <option value="{{ $responden->kewarganegaraan }}">{{ $responden->kewarganegaraan }}</option>
        @endif
          <option value="WNI">Warga Negara Indonesia</option>
          <option value="WNA">Warga Negara Asing</option>
        </select>
      </div>
      {{-- <div class="input-field animated fadeinright delay-5">
        <textarea class="materialize-textarea" id="textarea1"></textarea> 
        <label for="textarea1">Write your message here</label>
      </div> --}}
  		<button class="btn waves-effect waves-light btn-small primary-color block m-b-20 animated bouncein delay-2" 
            type="submit" id="btn_update_biodata">
            Perbarui biodata
        </button>
        <div class="progress" style="display:none ;">
            <div class="indeterminate"></div>
          </div>
        </div>

        <!-- End of Form -->
    </form>
@endsection

@section('custom_script')
    <script>
        $("form").submit(function(){
        	$(".progress").fadeIn();
          $(".preloader").fadeIn();
          $(".floating-button").hide();
          $("#btn_update_biodata").addClass('disabled');
        });
    </script>
@endsection