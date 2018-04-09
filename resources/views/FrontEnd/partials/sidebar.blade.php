<div class="panel panel-default panel-custom">
    <div class="panel-heading">Quick Contact</div>
    <div class="panel-body">
        <p>Lorem Ipsum</p>
        <p><strong>Email:</strong> info@example.com</p>
        <p><strong>Landline:</strong> +971 xxxx xxx</p>
        <p><strong>Mobile:</strong> +971 xxxx xxx</p>
        {{-- <p class="text-center"><a class="btn btn-default" href="">Contact Us</a></p> --}}
    </div>
</div>

@if( isset($sideAd) )
    <div class="panel panel-default panel-custom">
        <div class="panel-heading">Advertisement</div>
        <div class="panel-body">
            <strong class="text-uppercase">{{ $sideAd->title }}</strong><br><br>
            <a href="{{ $sideAd->link }}" target="_blank">
                <img src="{{ url('images/ads/' . $sideAd->image) }}" class="img-responsive" alt="">
            </a>
        </div>
    </div>
@endif