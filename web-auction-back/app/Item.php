<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Item extends Model
{
    //
    use SoftDeletes;

    protected $fillable = ['name', 'description', 'auction_end', 'image_url'];

    public function bids()
    {
        return $this->hasMany('App\UserAuction');
    }
}
