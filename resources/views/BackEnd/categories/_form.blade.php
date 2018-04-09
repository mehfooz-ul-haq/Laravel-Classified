<div class="form-group">
    {!! Form::label('name', 'Name:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('name', null, ['class' => 'form-control']) !!}</div>
</div>
<div class="form-group">
    {!! Form::label('&nbsp;', '&nbsp;', ['class' => 'col-sm-3 control-label']) !!}
    {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
    <a class="btn btn-link" href="{{ route('beCategories') }}">Cancel</a>
</div>
