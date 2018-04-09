<div class="form-group">
    {!! Form::label('category_id', 'Category:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::select('category_id', $categories, null, ['class' => 'form-control', 'placeholder' => 'Select a Category']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('title', 'Title:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('title', null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('price', 'Price:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('price', null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('quantity', 'In Stock:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('quantity', null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('upload_me', 'Image:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::file('upload_me', ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('details', 'Details:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-10">{!! Form::textarea('details', null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('&nbsp;', '&nbsp;', ['class' => 'col-sm-3 control-label']) !!}
    {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
    <a class="btn btn-link" href="{{ route('beCategories') }}">Cancel</a>
</div>

@section('javascript')
    CKEDITOR.replace('details');
@endsection