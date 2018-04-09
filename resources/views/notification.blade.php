{{-- /**
 * alert success message
 */ --}}
@if (session('success_message'))
    <div class="alert alert-success">
        {{ session('success_message') }}
    </div>
@endif

{{-- /**
 * alert warning message
 */ --}}
@if (session('warning_message'))
    <div class="alert alert-warning">
        {{ session('warning_message') }}
    </div>
@endif


{{-- /**
 * alert error message
 */ --}}
@if (session('error_message'))
    <div class="alert alert-danger">
        {{ session('error_message') }}
    </div>
@endif


{{-- /**
 * single form error
 */ --}}
@if( isset($error) )
    <div class="alert alert-danger">
        <p>{{ $error }}</p>
    </div>
@endif

{{--
/**
 * multiple form errors
 */ --}}
@if ( sizeof($errors) > 0 )
    <div class="alert alert-danger">
        @foreach ($errors->all() as $frm_error)
            <p>{{ $frm_error }}</p>
        @endforeach
    </div>
@endif
