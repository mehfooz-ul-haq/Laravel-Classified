<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\CarMake;

class CarMakesController extends Controller
{
    public function getList()
    {
    	$records = CarMake::orderBy('title', 'asc')->paginate(25);
    	
        return view('BackEnd.makes.list')
                ->with(['records'=>$records]);
    }

    public function getCreate()
    {
    	return view('BackEnd.makes.create');
    }

    public function getEdit(CarMake $carMake)
    {
    	return view('BackEnd.makes.edit')
                ->with(['carMake'=>$carMake]);
    }

    public function getDelete(CarMake $carMake)
    {
    	$carMake->delete();
        return redirect()->back()->with('success_message', 'Record deleted!');
    }

    public function postCreate(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|unique:makes'
        ]);

        CarMake::create($request->all());
        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }

    public function postEdit(Request $request, $id)
    {
        $record = CarMake::find($id);
        $record->update($request->all());

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }
}
