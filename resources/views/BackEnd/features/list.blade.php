@extends('BackEnd.layout')
@section('active_feature', 'active')

@section('content')
    <h1>Features
        <a href="{{ route('beFeaturesCreate') }}" class="pull-right btn btn-info">CREATE</a>
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
                    <td>{!! $record->title !!}</td>
                    <td class="text-center actions">
                        <a href="{{ route('beFeaturesEdit', $record->id) }}">Edit</a> -
                        <a href="{{ route('beFeaturesDelete', $record->id) }}">Delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="text-center">
        {{ $records->links() }}
    </div>

@endsection
