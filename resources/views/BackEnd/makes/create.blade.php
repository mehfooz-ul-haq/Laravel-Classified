@extends('BackEnd.layout')
@section('active_make', 'active')

@section('content')
    <h1>Makes</h1>
    
    <div class="row">
        <div class="col-md-12">

            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    @include('notification')

                    {!! Form::open(['class' => 'form-horizontal', ' autocomplete' => 'off']) !!}

                        @include('BackEnd.makes._form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
