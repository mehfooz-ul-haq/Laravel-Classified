<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Carbon\Carbon;

class Page extends Model
{
    protected $fillable = ['name','href','title','contents','contents_short','slider','image','views','is_service','is_hot','service_type'];


    public function setNameAttribute($value) {
	    $this->attributes['name'] = $value;
        $this->attributes['href'] = str_slug($value, '-');
    }

    /**
     * Scope a query to for service or non-service pages.
     *
     * @param \Illuminate\Database\Eloquent\Builder $query
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeService($query, $val='N')
    {
        return $query->where('is_service', $val);
    }

    /**
     * Scope a query to for orderBy pages.
     *
     * @param \Illuminate\Database\Eloquent\Builder $query
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeAscDesc($query, $col='name', $ord='asc')
    {
        return $query->orderBy($col, $ord);
    }

    
    public function getCreatedAtAttribute($date)
	{
	    return Carbon::createFromFormat('Y-m-d H:i:s', $date)->format('d M Y');
	}

	/**
 	* The pages that this instance links
 	*/
	public function links()
	{
	    return $this->belongsToMany(Page::class, 'link_pages', 'page_id', 'page_link_id')->withTimestamps();
	}

	/**
	 * The pages that link this instance (you might not need this!)
	 */
	public function linkedBy()
	{
	    return $this->belongsToMany(Page::class, 'link_pages', 'page_link_id', 'page_id');
	}



    public function getLinkPagesAttribute()
    {
        return $this->links->pluck('id');
    }
}
