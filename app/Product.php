<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['category_id','title','slug','image','quantity','price','details'];

    public function setTitleAttribute($value) {
	    $this->attributes['title'] = $value;
        $this->attributes['slug'] = str_slug($value, '-');
    }

    public function category()
    {
    	return $this->belongsTo(Category::class);
    }
}
