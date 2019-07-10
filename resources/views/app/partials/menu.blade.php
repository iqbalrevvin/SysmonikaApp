@php
	use App\Responden;
	$responden = Responden::where('user_id', app('VoyagerAuth')->user()->id)->first();
@endphp
<ul id="slide-out-left" class="side-nav collapsible">
 <li class="sidenav-avatar bg-material">
         <div class="bottom">
            {{-- <img src="{{ asset('frontsite/img/user.jpg') }}" alt="" class="avatar"> --}}
            	<img src="{{ Gravatar::image(app('VoyagerAuth')->user()->email) }}" alt="{{ app('VoyagerAuth')->user()->name }}" class="avatar">
            <!-- Dropdown Trigger -->
            <span class="dropdown-button waves-effect waves-light" data-activates="dropdown1">
            	{{ app('VoyagerAuth')->user()->email }}<i class="ion-android-arrow-dropdown right"></i>
            </span>
            <!-- Dropdown Structure -->
            <ul id="dropdown1" class="dropdown-content">
                <li><a href="https://myaccount.google.com/personal-info">{{ app('VoyagerAuth')->user()->email }}</a></li>
                <li class="divider"></li>
                	<a href="#" 
                		onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                		Keluar <i class="ion-log-out"></i>
                	</a>
                	<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </li>
            </ul>
        </div>
    </li>
    @foreach($items as $menu_item)
        <li>
        	<a href="{{ $menu_item->link() }}">
        		<i class="ion-android-menu "></i> {{ $menu_item->title }}
        	</a>
        </li>
    @endforeach
    {{-- <li>
        <div class="collapsible-header waves-effect">
            <i class="ion-help"></i>Email Bantuan<span class="more"><i class="ion-ios-arrow-right"></i></span>
        </div>
        <div class="collapsible-body">
            <ul class="collapsible">
                <li>
                    <a href="mailto:appsysmonika@gmail.com?subject={{ $responden->nik }} | Cek Status KTP">
                    	Cek Status KTP 
                    </a>
                </li>
                <li>
                    <a href="{{ url('biodata') }}" class="waves-effect">
                        Nama Tidak Sesuai
                    </a>
                </li>
            </ul>
        </div>
    </li> --}}
    <li><a href="#" class="waves-effect"><i class="ion-android-sync"></i> Sinkronisasi Data</a></li>
    <li>
        <a href="mailto:appsysmonika@gmail.com?subject={{ $responden->nik }} | Cek Status KTP" class="waves-effect">
            <i class="ion-android-mail"></i> Email Bantuan
        </a>
    </li>
    <li><a href="{{ url('about') }}" class="waves-effect"><i class="ion-ios-people"></i> Tentang Aplikasi</a></li>
</ul>