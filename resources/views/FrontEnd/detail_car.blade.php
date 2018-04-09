@extends('FrontEnd.layout')
@section('title', $car->make->title . ' '. $car->model->title .' '. $car->year .' '. $car->title)

@section('contents')

	@include('FrontEnd.partials.quick_guide')

	<h1>{{ $car->make->title . ' '. $car->model->title .' '. $car->year .' '. $car->title }}</h1>
	
	<div class="img-thumbanil">
		<img class="img-responsive img-thumbnail" src="../../images/cars/{{ $car->image }}" alt="">
	</div>

	<h3>Basic Details</h3>
	<table class="table table-bordered table-condensed">
		<tr>
			<td>Make</td>
			<td class="text-uppercase">{{ $car->make->title }}</td>
			<td>Model</td>
			<td class="text-uppercase">{{ $car->model->title }}</td>
		</tr>
		<tr>
			<td>Price</td>
			<td>{{ $car->price }}</td>
			<td>Engine Type</td>
			<td>{{ $car->engine_type }}</td>
		</tr>
		<tr>
			<td>Mileage</td>
			<td>{{ $car->driven_km }}</td>
			<td>Color</td>
			<td>{{ $car->color }}</td>
		</tr>
		<tr>
			<td>Doors</td>
			<td>{{ $car->doors }}</td>
			<td>Year</td>
			<td>{{ $car->year }}</td>
		</tr>
	</table>

	<h3>Extra Features</h3>
	<div class="row">
		@foreach( $car->features as $feature ) 
			<div class="col-sm-3">
				<div class="img-thumbnail" style="margin:5px; display:block; width:100%;">
					{{ $feature->title }}
				</div>
			</div>
		@endforeach
	</div>

	<h3>More Details</h3>
	{!! $car->details !!}

	<br>
	

@endsection