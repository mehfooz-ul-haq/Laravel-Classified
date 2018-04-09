<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CarMake extends Model
{
	protected $table = 'makes';
    protected $fillable = ['title','slug'];
    
    public function setTitleAttribute($value) {
	    $this->attributes['title'] = $value;
        $this->attributes['slug'] = str_slug($value, '-');
    }

    public function models()
    {
    	return $this->hasmany(CarModel::class, 'make_id')->orderBy('title', 'asc');
    }
}
