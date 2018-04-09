@extends('BackEnd.layout')
@section('active_product', 'active')

@section('content')
    <h1>Products
        <a href="{{ route('beProductsCreate') }}" class="pull-right btn btn-info">CREATE</a>
    </h1>
    @include('notification')

    <table class="table table-condensed table-bordered table-hover">
        <thead>
            <tr>
                <th>Title</th>
                <th width="250">Category</th>
                <th width="80">Price</th>
                <th width="80">In Stock</th>
                <th width="150">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($records as $record)
                <tr>
                    <td>{!! $record->title !!}</td>
                    <td>{!! $record->category->name !!}</td>
                    <td>{!! $record->price !!}</td>
                    <td>{!! $record->quantity !!}</td>
                    <td class="text-center actions">
                        <a target="_blank" href="{{ route('feProductDetails', [$record->category->slug, $record->slug]) }}">View</a> -
                        <a href="{{ route('beProductsEdit', $record->id) }}">Edit</a> -
                        <a href="{{ route('beProductsDelete', $record->id) }}">Delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="text-center">
        {{ $records->links() }}
    </div>

@endsection
