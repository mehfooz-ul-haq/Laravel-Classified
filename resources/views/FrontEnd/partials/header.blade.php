<header>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <a href="{{ route('feIndexPage') }}"><img src="{{ url('images/logo.png') }}" alt=""></a>
            </div>
            <div class="col-sm-8">
            </div>
        </div><br>
        <nav class="navbar navbar-default navbar-custom">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>  
            </div>

            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="{{ route('feIndexPage') }}">HOME</a></li>
                    <li><a href="{{ route('feIndexPage') }}">CARS</a></li>
                    <li><a href="{{ route('feIndexPage') }}">CATEGORIES</a></li>
                    <li><a href="{{ route('feIndexPage') }}">PRODUCTS</a></li>
                    <li><a href="{{ route('feIndexPage') }}">Contact Us</a></li>
                </ul>
            </div>

        </nav>
        
    </div>
</header>