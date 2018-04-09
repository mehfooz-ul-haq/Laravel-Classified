<div class="form-group">
    {!! Form::label('make_id', 'Category:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-4">{!! Form::select('make_id', $carMakes, null, ['class' => 'form-control', 'placeholder' => 'Select a Category', 'id' => 'make']) !!}</div>
    <div class="col-sm-4">{!! Form::select('model_id', ['Select a Make'], null, ['class' => 'form-control', 'id' => 'model']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('title', 'Title:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('title', null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('year', 'Year:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::selectRange('year', 2000, 2018, null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('price', 'Price:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('price', null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('driven_km', 'Mileage (KMs):', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('driven_km', null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('doors', 'Doors:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::select('doors', helper_carDoors(), null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('engine_type', 'Engine Type:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::select('engine_type', helper_carEngineTypes(), null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('color', 'Color:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::select('color', helper_carColors(), null, ['class' => 'form-control']) !!}</div>
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
    {!! Form::label('features', 'Car Features:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-4">
        {!! Form::select('features[]', $carFeatures, null, ['class' => 'form-control', 'multiple' => true, 'size' => 15]) !!}
    </div>
</div>


<div class="form-group">
    {!! Form::label('&nbsp;', '&nbsp;', ['class' => 'col-sm-3 control-label']) !!}
    {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
    <a class="btn btn-link" href="{{ route('beCars') }}">Cancel</a>
</div>

@section('javascript')
    CKEDITOR.replace('details');
@endsection