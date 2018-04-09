<div class="form-group">
    {!! Form::label('title', 'Make Name:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('title', null, ['class' => 'form-control']) !!}</div>
</div>
<div class="form-group">
    {!! Form::label('&nbsp;', '&nbsp;', ['class' => 'col-sm-3 control-label']) !!}
    {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
    <a class="btn btn-link" href="{{ route('beMakes') }}">Cancel</a>
</div>
