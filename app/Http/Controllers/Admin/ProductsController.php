<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Product;
use App\Category;
use App\UploadFile;
use App\Http\Requests\ProductRequest;

class ProductsController extends Controller
{
    public function getList()
    {
    	$records = Product::orderBy('title', 'asc')->paginate(25);
    	
        return view('BackEnd.products.list')
                ->with(['records'=>$records]);
    }

    public function getCreate()
    {
    	$categories = Category::orderBy('name', 'asc')->pluck('name','id');
    	return view('BackEnd.products.create')
    			->with(['categories' => $categories]);
    }

    public function getEdit(Product $product)
    {
    	$categories = Category::orderBy('name', 'asc')->pluck('name','id');
    	return view('BackEnd.products.edit')
                ->with(['product'=>$product, 'categories' => $categories]);
    }

    public function getDelete(Product $product)
    {
    	$product->delete();
        return redirect()->back()->with('success_message', 'Record deleted!');
    }

    public function postCreate(ProductRequest $request)
    {
        $image = UploadFile::uploadAttachment($request, 'images/products/');
        if( $image != null )
            $request->request->add(['image' => $image]);

        Product::create($request->all());
        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }

    public function postEdit(Request $request, $id)
    {
    	$image = UploadFile::uploadAttachment($request, 'images/products/');
        if( $image != null )
            $request->request->add(['image' => $image]);

        $record = Product::find($id);
        $record->update($request->all());

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }
}
