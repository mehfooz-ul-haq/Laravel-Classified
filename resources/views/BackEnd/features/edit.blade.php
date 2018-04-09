@extends('BackEnd.layout')
@section('active_feature', 'active')

@section('content')
    <h1>Features</h1>
    
    <div class="row">
        <div class="col-md-12">

            <div class="row">
                <div class="col-md-11 col-md-offset-1">

                    @include('notification')

                    {!! Form::model($feature, ['class' => 'form-horizontal', ' autocomplete' => 'off']) !!}
                        
                        @include('BackEnd.features._form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
