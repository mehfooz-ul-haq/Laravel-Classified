<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name') }}</title>
    <link rel="stylesheet" href="{{ url("css/app.css") }}">
    <link rel="stylesheet" href="{{ url("css/jquery-ui.min.css") }}">
    <link rel="stylesheet" href="{{ url("css/admin.css") }}">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
    <script src="https://use.fontawesome.com/42d25fc4bb.js"></script>
    <script>
        window.Laravel = <?php echo json_encode(['csrfToken' => csrf_token()]); ?>
    </script>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="">
                        {{ config('app.name') }}
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <ul class="nav navbar-nav">
                        {{-- 
                            @if ( Auth::check() && (Auth::user()->role_id == 1) )
                            @endif
                        --}}
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        {{-- 
                            @if ( Auth::check() )
                                <li><a href="javascript:;">{{ Auth::user()->name }}</a></li>                            
                                <li><a href="">My Account</a></li>
                         --}}
                                <li><a href="">Change Password</a></li>
                                <li><a href="{{ route('beSignOut') }}">Logout</a></li>
                        {{-- 
                            @endif
                         --}}
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3">
                    <div class="list-group">
                        <a href="{{ route('beAds') }}" class="list-group-item @yield('active_ad')">Ads</a>
                        <a href="{{ route('beCars') }}" class="list-group-item @yield('active_car')">Cars</a>
                        <a href="{{ route('beProducts') }}" class="list-group-item @yield('active_product')">Products</a>
                        <a href="{{ route('beCategories') }}" class="list-group-item @yield('active_category')">Categories</a>
                        <a href="{{ route('beMakes') }}" class="list-group-item @yield('active_make')">Car Makes / Models</a>
                        <a href="{{ route('beFeatures') }}" class="list-group-item @yield('active_feature')">Car Features</a>
                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="contents">
                        @yield('content')
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="//cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
    <script src="{{ url("js/jquery-ui.min.js") }}"></script>
    <script>
        @yield('javascript')
    </script>
</body>
</html>
