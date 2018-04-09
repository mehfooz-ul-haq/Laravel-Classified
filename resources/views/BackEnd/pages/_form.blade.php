<div class="row">
    <div class="col-sm-4">
        <div class="form-group">
            {!! Form::label('slider', 'Slider:', ['class' => 'col-sm-6 control-label']) !!}
            <div class="col-sm-6">{!! Form::select('slider', ['N'=>'No', 'Y'=>'Yes'], null, ['class' => 'form-control']) !!}</div>
        </div>
    </div>
    <div class="col-sm-5">
        <div class="form-group">
            {!! Form::label('is_hot', 'Hot Page:', ['class' => 'col-sm-5 control-label']) !!}
            <div class="col-sm-6">{!! Form::select('is_hot', ['N'=>'No', 'Y'=>'Yes'], null, ['class' => 'form-control']) !!}</div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-sm-4">
        <div class="form-group">
            {!! Form::label('is_service', 'Service Page:', ['class' => 'col-sm-6 control-label']) !!}
            <div class="col-sm-6">{!! Form::select('is_service', ['N'=>'No', 'Y'=>'Yes'], null, ['class' => 'form-control']) !!}</div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="form-group">
            {!! Form::label('service_type', 'Type:', ['class' => 'col-sm-3 control-label']) !!}
            <div class="col-sm-7">{!! Form::select('service_type', ['Main' => 'Main Service', 'company-incorporation' =>'Company Incorporation', 'vat' => 'VAT', 'accounting' => 'Accounting', 'valuation' => 'Valuation', 'funding' => 'Funding', 'trainings' => 'Trainings'], null, ['class' => 'form-control', 'placeholder'=>'Select Service Type']) !!}</div>
        </div>
    </div>
</div>

<div class="form-group">
    {!! Form::label('name', 'Name:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-6">{!! Form::text('name', null, ['class' => 'form-control']) !!}</div>
</div>
<div class="form-group">
    {!! Form::label('title', 'Title:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-9">{!! Form::text('title', null, ['class' => 'form-control']) !!}</div>
</div>
<div class="form-group">
    {!! Form::label('image', 'Main Image:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-9">{!! Form::file('image', ['class' => 'form-control']) !!}</div>
</div>
<div class="form-group">
    {!! Form::label('contents_short', 'Short Contents:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-9">{!! Form::textarea('contents_short', null, ['class' => 'form-control', 'rows'=>5]) !!}</div>
</div><br>
<div class="form-group">
    {!! Form::label('contents', 'Full Contents:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-11">{!! Form::textarea('contents', null, ['class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('link_pages', 'Link To Pages:', ['class' => 'col-sm-2 control-label']) !!}
    <div class="col-sm-11">{!! Form::select('link_pages[]', $records, null, ['multiple' => true, 'size' => '6', 'class' => 'form-control']) !!}</div>
</div>

<div class="form-group">
    {!! Form::label('&nbsp;', '&nbsp;', ['class' => 'col-sm-3 control-label']) !!}
    {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
    <a class="btn btn-link" href="{{ route('bePages') }}">Cancel</a>
</div>


@section('javascript')
    CKEDITOR.replace('contents');
@endsection