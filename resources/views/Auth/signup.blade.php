{{ dd('not allowed') }}
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ url("css/auth.css") }}">
</head>

<body>
    <div id="app-login">
        <div class="container">
            <h1>Signup</h1>

            <div class="row">
                <div class="col-md-offset-1 col-md-10">
                    @include('shared.notification') {!! Form::open(['class' => 'form-horizontal']) !!}
                    <div class="form-group">
                        {!! Form::label('first_name', 'First Name', ['class' => 'col-sm-4 control-label']) !!}
                        <div class="col-sm-12">
                            {!! Form::text('first_name', null, ['class' => 'form-control']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('last_name', 'Last Name', ['class' => 'col-sm-4 control-label']) !!}
                        <div class="col-sm-12">
                            {!! Form::text('last_name', null, ['class' => 'form-control']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('email', 'Email Address', ['class' => 'col-sm-4 control-label']) !!}
                        <div class="col-sm-12">
                            {!! Form::text('email', null, ['class' => 'form-control']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('password', 'Password', ['class' => 'col-sm-4 control-label']) !!}
                        <div class="col-sm-12">
                            {!! Form::password('password', ['class' => 'form-control']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('password2', 'Confirm Password', ['class' => 'col-sm-4 control-label']) !!}
                        <div class="col-sm-12">
                            {!! Form::password('confirm_password', ['class' => 'form-control']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-12">
                            {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                            <a class="btn btn-link" href="{{ route('signin') }}">Already a member? Login here</a>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>