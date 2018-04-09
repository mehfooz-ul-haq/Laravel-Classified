<?php
Route::get('/', 'IndexController@getPageData')->name('feIndexPage');


/* user registration routes */
Route::get('/signin', 'Auth\SigninController@getSignInPage')->name('feSignInPage');
Route::get('/forget-password', 'Auth\PasswordController@getForgetPasswordPage')->name('feForgetPasswordPage');

Route::post('/signin', 'Auth\SigninController@postSignInPage')->name('FeSignInPage');
Route::post('/forget-password', 'Auth\PasswordController@postForgetPasswordPage')->name('FeForgetPasswordPage');

// Route::get('/register', 'Auth\RegisterController@getRegisterPage')->name('FeRegisterPage');
// Route::post('/register', 'Auth\RegisterController@postRegisterPage')->name('FeRegisterPage');

Route::group(['middleware'=>'admin', 'prefix'=>'Admin'], function() {
	Route::get('/', 'Admin\DashboardController@index')->name('beDashboard');
    Route::get('/logout', 'Auth\SigninController@getSignOutPage')->name('beSignOut');
    Route::get('/changePassword', 'Auth\PasswordController@getChangePassword')->name('changePassword');
   
    Route::get('/ads', 'Admin\AdsController@getList')->name('beAds');
    Route::get('/ads/create', 'Admin\AdsController@getCreate')->name('beAdsCreate');
    Route::get('/ads/delete/{ad}', 'Admin\AdsController@getDelete')->name('beAdsDelete');
    Route::post('/ads/create', 'Admin\AdsController@postCreate')->name('beAdsCreate');
   
    Route::get('/cars', 'Admin\CarsController@getList')->name('beCars');
    Route::get('/cars/create', 'Admin\CarsController@getCreate')->name('beCarsCreate');
    Route::get('/cars/edit/{car}', 'Admin\CarsController@getEdit')->name('beCarsEdit');
    Route::get('/cars/delete/{car}', 'Admin\CarsController@getDelete')->name('beCarsDelete');
    Route::get('/cars/images/{car}', 'Admin\CarsController@getImages')->name('beCarsImages');
    Route::post('/cars/create', 'Admin\CarsController@postCreate')->name('beCarsCreate');
    Route::post('/cars/edit/{car}', 'Admin\CarsController@postEdit')->name('beCarsEdit');
   
    Route::get('/products', 'Admin\ProductsController@getList')->name('beProducts');
    Route::get('/products/create', 'Admin\ProductsController@getCreate')->name('beProductsCreate');
    Route::get('/products/edit/{product}', 'Admin\ProductsController@getEdit')->name('beProductsEdit');
    Route::get('/products/delete/{product}', 'Admin\ProductsController@getDelete')->name('beProductsDelete');
    Route::get('/products/images/{product}', 'Admin\ProductsController@getImages')->name('beProductsImages');
    Route::post('/products/create', 'Admin\ProductsController@postCreate')->name('beProductsCreate');
    Route::post('/products/edit/{product}', 'Admin\ProductsController@postEdit')->name('beProductsEdit');
   

    Route::get('/categories', 'Admin\CategoriesController@getList')->name('beCategories');
    Route::get('/categories/create', 'Admin\CategoriesController@getCreate')->name('beCategoriesCreate');
    Route::get('/categories/edit/{category}', 'Admin\CategoriesController@getEdit')->name('beCategoriesEdit');
    Route::get('/categories/delete/{category}', 'Admin\CategoriesController@getDelete')->name('beCategoriesDelete');
    Route::post('/categories/create', 'Admin\CategoriesController@postCreate')->name('beCategoriesCreate');
    Route::post('/categories/edit/{category}', 'Admin\CategoriesController@postEdit')->name('beCategoriesEdit');

    Route::get('/makes', 'Admin\CarMakesController@getList')->name('beMakes');
    Route::get('/makes/create', 'Admin\CarMakesController@getCreate')->name('beMakesCreate');
    Route::get('/makes/edit/{carMake}', 'Admin\CarMakesController@getEdit')->name('beMakesEdit');
    Route::get('/makes/delete/{carMake}', 'Admin\CarMakesController@getDelete')->name('beMakesDelete');
    Route::post('/makes/create', 'Admin\CarMakesController@postCreate')->name('beMakesCreate');
    Route::post('/makes/edit/{carMake}', 'Admin\CarMakesController@postEdit')->name('beMakesEdit');

    Route::get('/models/create', 'Admin\CarModelsController@getCreate')->name('beModelsCreate');
    Route::get('/models/{carMake}', 'Admin\CarModelsController@getList')->name('beModels');
    Route::get('/models/edit/{carModel}', 'Admin\CarModelsController@getEdit')->name('beModelsEdit');
    Route::get('/models/delete/{carModel}', 'Admin\CarModelsController@getDelete')->name('beModelsDelete');
    Route::post('/models/create', 'Admin\CarModelsController@postCreate')->name('beModelsCreate');
    Route::post('/models/edit/{carModel}', 'Admin\CarModelsController@postEdit')->name('beModelsEdit');

    Route::get('/features', 'Admin\CarFeaturesController@getList')->name('beFeatures');
    Route::get('/features/create', 'Admin\CarFeaturesController@getCreate')->name('beFeaturesCreate');
    Route::get('/features/edit/{feature}', 'Admin\CarFeaturesController@getEdit')->name('beFeaturesEdit');
    Route::get('/features/delete/{feature}', 'Admin\CarFeaturesController@getDelete')->name('beFeaturesDelete');
    Route::post('/features/create', 'Admin\CarFeaturesController@postCreate')->name('beFeaturesCreate');
    Route::post('/features/edit/{feature}', 'Admin\CarFeaturesController@postEdit')->name('beFeaturesEdit');
});

Route::get('/{category}-products', 'IndexController@getCategoryProducts')->name('feCategories');
Route::get('/{category}/{product}', 'IndexController@getProductDetail')->name('feProductDetails');
Route::get('/{make}/{model}/{car}', 'IndexController@getCarDetail')->name('feCarDetails');




