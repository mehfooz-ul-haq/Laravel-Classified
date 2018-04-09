@extends('BackEnd.layout')
@section('active_ad', 'active')

@section('content')
    <h1>Advertisement</h1>
    
    <div class="row">
        <div class="col-md-12">

            <div class="row">
                <div class="col-md-6 col-md-offset-1">
                    @include('notification')

                    {!! Form::open(['files' => true]) !!}

                        <div class="form-group">
                            {!! Form::label('expires_at', 'Expiry Date', ['class' => '']) !!}
                            {!! Form::text('expires_at', null, ['class' => 'form-control datepicker']) !!}
                        </div>

                        <div class="form-group">
                            {!! Form::label('title', 'File Title', ['class' => '']) !!}
                            {!! Form::text('title', null, ['class' => 'form-control']) !!}
                        </div>

                        <div class="form-group">
                            {!! Form::label('link', 'External Link', ['class' => '']) !!}
                            {!! Form::text('link', null, ['class' => 'form-control', 'placeholder' => 'http://www.google.com']) !!}
                        </div>

                        <div class="form-group">
                            {!! Form::label('upload_me', 'File') !!}
                            {!! Form::file('upload_me', ['class' => 'form-control']) !!}
                        </div>

                        <div class="form-group">
                            {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                            <a class="btn btn-link" href="{{ route('beAds') }}">Cancel</a>
                        </div>

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection

@section('javascript')
    $(".datepicker").datepicker({ dateFormat: 'yy-mm-dd' });
@endsection