<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>@yield('title') - {{ config('app.name') }}</title>
    <link rel="stylesheet" href="{{ url("css/bootstrap.css") }}">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="{{ url("css/styles.css") }}">
    <link rel="stylesheet" href="{{ url("css/slider.css") }}">
    <link rel="stylesheet" href="{{ url("css/jquery-ui.min.css") }}"> 
    <style>
        @yield('stylesheet')
    </style>
    <script>
    window.Laravel = <?php echo json_encode(['csrfToken'=>csrf_token() ]); ?>

    </script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
</head>

<body>
    <div id="app">
        <div class="well well-sm top-well-links">
            <div class="container">
                <div class="row text-center">
                    <div class="col-sm-4">Email: info@example.com</div>
                    <div class="col-sm-4">Landline: +971 xxxx xxx</div>
                    <div class="col-sm-4">Mobile: +971 xxxx xxx</div>
                </div>                
            </div>
        </div>

        @include('FrontEnd.partials.header')

        <section><br>
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        @yield('contents')
                    </div>
       
                    <div class="col-sm-3">
                        @include('FrontEnd.partials.sidebar')
                    </div>
                </div>
            </div>
        </section>
    </div>

    @include('FrontEnd.partials.footer')

    <script src="{{ url('js/jquery-3.1.0.min.js') }}"></script>
    <script src="{{ url('js/bootstrap.min.js') }}"></script>
    <script src="{{ url("js/jquery-ui.min.js") }}"></script>
    <script src="{{ url('js/script.js') }}"></script>
    <script>
        @yield('javascript')
    </script>
</body>

</html>