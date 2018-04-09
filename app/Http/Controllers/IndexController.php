<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Mail\ContactUs;
use App\Mail\EventSignUp;

use App\Car;
use App\Ad;
use App\Product;
use App\Category;
use App\CarMake;
use App\CarModel;

class IndexController extends Controller
{
    public function getPageData()
    {
        return view('FrontEnd.index');
    }
    public function getCarDetail(Request $request)
    {
        $slug = $request->segment(3);
        $car = Car::where('slug', $slug)->first();

        return view('FrontEnd.detail_car')
                ->with(['car'=>$car]);
    }
    
    public function getProductDetail(Request $request)
    {
        $slug = $request->segment(2);
        $product = Product::where('slug', $slug)->first();
        
        return view('FrontEnd.detail_product')
                ->with(['product'=>$product]);
    }

    public function getCategoryProducts(Request $request)
    {
        dd($request->segments());
    }
}
