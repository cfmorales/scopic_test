<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserAuction extends Model
{
    //
    protected $fillable = ['bid','user_id','item_id'];

    public function item()
    {
        return $this->belongsTo('App\Item');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
