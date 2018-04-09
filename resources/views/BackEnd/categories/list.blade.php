@extends('BackEnd.layout')
@section('active_category', 'active')

@section('content')
    <h1>Categories
        <a href="{{ route('beCategoriesCreate') }}" class="pull-right btn btn-info">CREATE</a>
    </h1>
    @include('notification')

    <table class="table table-condensed table-bordered table-hover">
        <thead>
            <tr>
                <th>Title</th>
                <th width="150">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($records as $record)
                <tr>
                    <td>{!! $record->name !!}</td>
                    <td class="text-center actions">
                        <a target="_blank" href="{{ route('feCategories', $record->slug) }}">View</a> -
                        <a href="{{ route('beCategoriesEdit', $record->id) }}">Edit</a> -
                        <a href="{{ route('beCategoriesDelete', $record->id) }}">Delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="text-center">
        {{ $records->links() }}
    </div>

@endsection
