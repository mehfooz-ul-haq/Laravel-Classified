<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\CarFeature;

class CarFeaturesController extends Controller
{
    public function getList()
    {
    	$records = CarFeature::orderBy('title', 'asc')->paginate(25);
    	
        return view('BackEnd.features.list')
                ->with(['records'=>$records]);
    }

    public function getCreate()
    {
    	return view('BackEnd.features.create');
    }

    public function getEdit(Feature $feature)
    {
    	return view('BackEnd.features.edit')
                ->with(['feature'=>$feature]);
    }

    public function getDelete(CarFeature $feature)
    {
    	$feature->delete();
        return redirect()->back()->with('success_message', 'Record deleted!');
    }

    public function postCreate(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|unique:features'
        ]);

        CarFeature::create($request->all());
        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }

    public function postEdit(Request $request, $id)
    {
        $record = CarFeature::find($id);
        $record->update($request->all());

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }
}
