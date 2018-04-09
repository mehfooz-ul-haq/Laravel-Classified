<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Category;

class CategoriesController extends Controller
{
    public function getList()
    {
    	$records = Category::orderBy('name', 'asc')->paginate(25);
    	
        return view('BackEnd.categories.list')
                ->with(['records'=>$records]);
    }

    public function getCreate()
    {
    	return view('BackEnd.categories.create');
    }

    public function getEdit(Category $category)
    {
    	return view('BackEnd.categories.edit')
                ->with(['category'=>$category]);
    }

    public function getDelete(Category $category)
    {
    	$category->delete();
        return redirect()->back()->with('success_message', 'Record deleted!');
    }

    public function postCreate(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:categories'
        ]);

        Category::create($request->all());
        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }

    public function postEdit(Request $request, $id)
    {
        $record = Category::find($id);
        $record->update($request->all());

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }
}
