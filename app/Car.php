<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    protected $fillable = ['make_id','model_id','title','slug','price','doors','engine_type','driven_km','color','details','image','year'];

    public function setTitleAttribute($value) {
	    $this->attributes['title'] = $value;
        $this->attributes['slug'] = str_slug($value, '-');
    }

    public function make()
    {
    	return $this->belongsTo(CarMake::class);
    }

    public function model()
    {
    	return $this->belongsTo(CarModel::class);
    }

    /*
    public function features()
    {
    	return $this->hasMany(CarFeature::class);
    }
    */

    /**
    * The car that this instance links
    */
    public function features()
    {
        return $this->belongsToMany(CarFeature::class, 'car_features', 'car_id', 'feature_id');
    }
}
