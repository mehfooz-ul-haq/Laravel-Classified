@extends('BackEnd.layout')
@section('active_category', 'active')

@section('content')
    <h1>Categories</h1>
    
    <div class="row">
        <div class="col-md-12">

            <div class="row">
                <div class="col-md-11 col-md-offset-1">

                    @include('notification')

                    {!! Form::model($category, ['class' => 'form-horizontal', ' autocomplete' => 'off', 'files' => true]) !!}
                        
                        @include('BackEnd.categories._form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
