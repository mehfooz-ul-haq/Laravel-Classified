{{ dd('not allowed') }}
@extends('layouts.app')

@section('content')
    <h1>Change Password</h1>

    <div class="row">
        <div class="col-md-offset-1 col-md-8">
            @include('shared.notification')

            {!! Form::open(['class' => 'form-horizontal']) !!}
                <div class="form-group">
                    {!! Form::label('password', 'Password', ['class' => 'col-sm-4 control-label']) !!}
                    <div class="col-sm-6">
                        {!! Form::text('password', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    {!! Form::label('password2', 'Confirm Password', ['class' => 'col-sm-4 control-label']) !!}
                    <div class="col-sm-6">
                        {!! Form::text('password2', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-6">
                        {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
