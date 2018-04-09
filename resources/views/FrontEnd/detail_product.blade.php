@extends('FrontEnd.layout')
@section('title', $product->title . ' in ' . $product->category->name)

@section('contents')

	@include('FrontEnd.partials.quick_guide')

	<h1>{{ $product->title }}</h1>
	<small><strong>Category:</strong> {{ $product->category->name }}</small>
	
	<div class="img-thumbanil">
		<img class="img-responsive img-thumbnail" src="../images/products/{{ $product->image }}" alt="">
	</div><br>
	
	<div class="price">
		<strong>Price:</strong> {{ $product->price }}
	</div>
	<div class="stock">
		<strong>In Stock:</strong> {{ $product->quantity }}
	</div>

	<h3>Product Details</h3>
	{!! $product->details !!}

	<br>
	

@endsection