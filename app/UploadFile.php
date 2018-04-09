<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Image;

class UploadFile extends Model
{
    public static function uploadAttachment($request, $path = 'images/')
    {
    	$filename = null;
    	if( $request->hasFile('upload_me') ) {
    		$image = $request->file('upload_me');
    		$filename = time() .'.'. $image->getClientOriginalExtension();
			$path = public_path($path . $filename);

            Image::make($image)->save($path);
    		// Image::make($image)->resize(600,370)->save($path);
    	}
    	return $filename;
    }
}
