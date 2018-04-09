<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CarModel extends Model
{
	protected $table = 'models';
    protected $fillable = ['title','slug','make_id'];
    
    public function setTitleAttribute($value) {
	    $this->attributes['title'] = $value;
        $this->attributes['slug'] = str_slug($value, '-');
    }

    public function make()
    {
    	return $this->belongsTo(CarMake::class);
    }
}
