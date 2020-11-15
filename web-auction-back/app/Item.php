<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Item extends Model
{
    //
    use SoftDeletes;
    protected $fillable = ['name', 'description', 'auction_end', 'image_url','item_owner'];

    public function bids()
    {
        return $this->hasMany('App\UserAuction');
    }

    public function itemOwner()
    {
        return $this->belongsTo('App\User','item_owner');
    }
}
