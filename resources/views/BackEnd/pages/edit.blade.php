@extends('BackEnd.layout')
@section('active_pages', 'active')

@section('content')
    <h1>Pages</h1>
    
    <div class="row">
        <div class="col-md-12">

            <div class="row">
                <div class="col-md-11 col-md-offset-1">

                    @include('notification')

                    {!! Form::model($page, ['class' => 'form-horizontal', ' autocomplete' => 'off', 'files' => true]) !!}
                        
                        @include('BackEnd.pages._form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
