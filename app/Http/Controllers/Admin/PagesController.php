<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Page;

class PagesController extends Controller
{

    public function getList()
    {
    	$records = Page::orderBy('service_type', 'asc')->orderBy('name', 'asc')->get();
    	
        return view('BackEnd.pages.index')
                ->with(['records'=>$records]);
    }

    public function getCreatePage()
    {
        $records = Page::service()->ascDesc()->pluck('name','id');
    	
        return view('BackEnd.pages.create')
                ->with(['records' => $records]);
    }

    public function getEditPage(Page $page)
    {
        $records = Page::service()->ascDesc()->pluck('name','id');

    	return view('BackEnd.pages.edit')
                ->with(['page'=>$page,'records' => $records]);
    }

    public function getDeletePage($id)
    {
    	Page::where(['id' => $id])->delete();
        return redirect()->back()->with('success_message', 'Record deleted!');
    }

    public function postCreatePage(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:pages',
            'title' => 'required',
            'contents' => 'required'
        ]);

        $page = Page::create($request->all());
        $page->links()->sync($request->get('link_pages'));

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }

    public function postEditPage(Request $request, $id)
    {
        
        $page = Page::find($id);
        $page->update($request->all());
        $page->links()->sync($request->get('link_pages'));

        return redirect()->back()->with('success_message', 'Data saved successfuly.');
    }
}
