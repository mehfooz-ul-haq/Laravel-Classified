<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\CarMake;
use App\CarModel;

class CarModelsController extends Controller
{
    public function getList(CarMake $carMake)
    {
        $records = $carMake->models;
    	
        return view('BackEnd.models.list')
                ->with(['records'=>$records, 'carMake' => $carMake]);
    }

    public function getCreate()
    {
    	$records = CarMake::orderBy('title', 'asc')->pluck('title','id');
        
        return view('BackEnd.models.create')
                ->with(['records'=>$records]);
    }

    public function getEdit(CarModel $carModel)
    {
        $records = CarMake::orderBy('title', 'asc')->pluck('title','id');
    	return view('BackEnd.models.edit')
                ->with(['carModel'=>$carModel, 'records'=>$records]);
    }

    public function getDelete(CarModel $carModel)
    {
    	$carModel->delete();
        return redirect()->back()->with('success_message', 'Record deleted!');
    }

    public function postCreate(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|unique:features'
        ]);

        CarModel::create($request->all());
        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }

    public function postEdit(Request $request, $id)
    {
        $record = CarModel::find($id);
        $record->update($request->all());

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }
}
