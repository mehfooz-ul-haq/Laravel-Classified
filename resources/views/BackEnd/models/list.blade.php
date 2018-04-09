@extends('BackEnd.layout')
@section('active_make', 'active')

@section('content')
    <h1> <span class="text-primary">{{ strtoupper($carMake->title) }}</span> Models</h1>
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
                        <a href="{{ route('beModelsEdit', $record->id) }}">Edit</a> -
                        <a href="{{ route('beModelsDelete', $record->id) }}">Delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

@endsection
