<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CarFeature extends Model
{
	protected $table = 'features';
    protected $fillable = ['title','slug'];
    
    public function setTitleAttribute($value) {
	    $this->attributes['title'] = $value;
        $this->attributes['slug'] = str_slug($value, '-');
    }
}
