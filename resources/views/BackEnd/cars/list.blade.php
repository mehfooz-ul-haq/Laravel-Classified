@extends('BackEnd.layout')
@section('active_car', 'active')

@section('content')
    <h1>Cars
        <a href="{{ route('beCarsCreate') }}" class="pull-right btn btn-info">CREATE</a>
    </h1>
    @include('notification')

    <table class="table table-condensed table-bordered table-hover">
        <thead>
            <tr>
                <th width="150">Make</th>
                <th width="150">Model</th>
                <th>Title</th>
                <th width="80">Price</th>
                <th width="80">Color</th>
                <th width="80">Engine</th>
                <th width="150">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($records as $record)
                <tr>
                    <td>{!! $record->make->title !!}</td>
                    <td>{!! $record->model->title !!}</td>
                    <td>{!! $record->title !!}</td>
                    <td>{!! $record->price !!}</td>
                    <td>{!! $record->color !!}</td>
                    <td>{!! $record->engine_type !!}</td>
                    <td class="text-center actions">
                        <a target="_blank" href="{{ route('feCarDetails', [$record->make->slug, $record->model->slug, $record->slug]) }}">View</a> -
                        <a href="{{ route('beCarsEdit', $record->id) }}">Edit</a> -
                        <a href="{{ route('beCarsDelete', $record->id) }}">Delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="text-center">
        {{ $records->links() }}
    </div>

@endsection
