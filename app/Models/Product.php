<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = ['name','barcode','cost','price','stock','alerts','image','category_id'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function ventas()
    {
        return $this->hasMany(Saledetail::class);
    }

    public function getImagenAttribute()
    {
        if($this->image != null)
            return (file_exists('storage/prudcts/' . $this->image) ? $this->image : 'noimg.jpg');
        else
            return 'noimg.jpg';
    }

    public function getPriceAttribute($value)
    {
        return str_replace(',','.', $value);
    }

    public function setPriceAttribute($value)
    {
        $this->attributes['price'] =str_replace(',', '.', preg_replace( '/,/', '', $value, preg_match_all('/,/', $value) -1));
    }

}
