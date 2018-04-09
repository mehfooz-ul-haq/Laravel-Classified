<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Ad;
use App\UploadFile;

class AdsController extends Controller
{
    public function getList()
    {
    	$records = Ad::orderBy('id', 'desc')->paginate(25);
    	
        return view('BackEnd.ads.list')
                ->with(['records'=>$records]);
    }

    public function getCreate()
    {
    	return view('BackEnd.ads.create');
    }

    public function getDelete(Ad $ad)
    {
    	$ad->delete();
        return redirect()->back()->with('success_message', 'Record deleted!');
    }

    public function postCreate(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|unique:ads',
            'link' => 'required',
            'upload_me' => 'required'
        ]);

        $image = UploadFile::uploadAttachment($request, 'images/ads/');
        if( $image != null )
            $request->request->add(['image' => $image]);

        Ad::create($request->all());
        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }
}

