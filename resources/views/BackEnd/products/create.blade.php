@extends('BackEnd.layout')
@section('active_product', 'active')

@section('content')
    <h1>Products</h1>
    
    <div class="row">
        <div class="col-md-12">

            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    
                    @include('notification')

                    {!! Form::open(['class' => 'form-horizontal', ' autocomplete' => 'off', 'files' => true]) !!}

                        @include('BackEnd.products._form')

                    {!! Form::close() !!}

                </div>
            </div>
        </div>
    </div>
@endsection
