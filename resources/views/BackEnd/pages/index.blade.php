@extends('BackEnd.layout')
@section('active_pages', 'active')

@section('content')
    <h1>Pages
        <a href="{{ route('bePagesCreate') }}" class="pull-right btn btn-info">CREATE</a>
    </h1>
    @include('notification')

    <table class="table table-condensed table-bordered table-hover">
        <thead>
            <tr>
                <th width="40">Hot</th>
                <th width="100">Service</th>
                <th width="200">Service Type</th>
                <th>Title</th>
                {{-- <th width="120">Created At</th> --}}
                <th width="80">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($records as $record)
                <tr>
                    <td class="text-center">{!! $record->is_hot !!}</td>
                    <td class="text-center">{!! $record->is_service !!}</td>
                    <td class="text-center">{!! ($record->service_type) ? $record->service_type : 'None' !!}</td>
                    <td>{!! $record->title !!}</td>
                    {{-- <td>{!! $record->created_at !!}</td> --}}
                    <td class="text-center actions">
                        <a href="{{ route('bePagesEdit', $record->id) }}"><i class="fa fa-pencil-square-o"></i></a>
                        <a href="{{ route('bePagesDelete', $record->id) }}"><i class="fa fa-trash-o"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="text-center">
        {{-- {{ $pages->links() }} --}}
    </div>

@endsection
