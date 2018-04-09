@extends('BackEnd.layout')
@section('active_ad', 'active')

@section('content')
    <div class="pull-left">
        <h1>Advertisement</h1>
    </div>
    <div class="pull-right">
        <a href="{{ route('beAdsCreate') }}" class="btn btn-sm btn-info">NEW ADVERTISEMENT</a>
    </div>
    <div class="clearfix"></div>
    
    @include('notification')

    <table class="table table-condensed table-bordered table-hover">
        <thead>
            <tr>
                <th>Title</th>
                <th>Link</th>
                <th>Expiry Date</th>
                <th width="80">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($records as $record)
                <tr>
                    <td>{!! $record->title !!}</td>
                    <td>{!! $record->link !!}</td>
                    <td>{!! $record->expires_at !!}</td>
                    <td class="text-center actions">
                        <a href="{{ route('beAdsDelete', $record->id) }}">Delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="text-center">
        {{ $records->links() }}
    </div>

@endsection
