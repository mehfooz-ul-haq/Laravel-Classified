@extends('BackEnd.layout')
@section('active_make', 'active')

@section('content')
    <div class="pull-left"><h1>Makes</h1></div>
    <div class="pull-right">
        <a href="{{ route('beMakesCreate') }}" class="pull-right btn btn-info">CREATE MAKE</a> &nbsp;
        <a href="{{ route('beModelsCreate') }}" class="pull-right btn btn-info">CREATE MODEL</a>
    </div>
    <div class="clearfix"></div>
    
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
                        <a href="{{ route('beModels', $record->id) }}">Models</a> -
                        <a href="{{ route('beMakesEdit', $record->id) }}">Edit</a> -
                        <a href="{{ route('beMakesDelete', $record->id) }}">Delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="text-center">
        {{ $records->links() }}
    </div>

@endsection
