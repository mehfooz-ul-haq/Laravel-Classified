<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Car;
use App\CarMake;
use App\CarModel;
use App\CarFeature;
use App\UploadFile;
use App\Http\Requests\CarRequest;

class CarsController extends Controller
{
    public function getList()
    {
    	$records = Car::orderBy('id', 'desc')->paginate(25);
    	
        return view('BackEnd.cars.list')
                ->with(['records'=>$records]);
    }

    public function getCreate()
    {
    	$carMakes = CarMake::orderBy('title', 'asc')->pluck('title','id');
    	$carFeatures = CarFeature::orderBy('title', 'asc')->pluck('title','id');
    	return view('BackEnd.cars.create')
    			->with(['carMakes' => $carMakes, 'carFeatures' => $carFeatures]);
    }

    public function getEdit(Car $car)
    {
    	$carMakes = CarMake::orderBy('title', 'asc')->pluck('title','id');
    	$carFeatures = CarFeature::orderBy('title', 'asc')->pluck('title','id');
    	return view('BackEnd.cars.edit')
                ->with(['car'=>$car, 'carMakes' => $carMakes, 'carFeatures' => $carFeatures]);
    }

    public function getDelete(Car $car)
    {
    	$car->delete();
        return redirect()->back()->with('success_message', 'Record deleted!');
    }

    public function postCreate(CarRequest $request)
    {
        $image = UploadFile::uploadAttachment($request, 'images/cars/');
        if( $image != null )
            $request->request->add(['image' => $image]);

        $car = Car::create($request->all());
        $car->features()->sync($request->get('features'));

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }

    public function postEdit(Request $request, $id)
    {
    	$image = UploadFile::uploadAttachment($request, 'images/cars/');
        if( $image != null )
            $request->request->add(['image' => $image]);

        $record = Car::find($id);
        $record->update($request->all());
        $record->features()->sync($request->get('features'));

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }
}
