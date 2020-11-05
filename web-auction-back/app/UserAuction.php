<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserAuction extends Model
{
    //

    public function article()
    {
        return $this->belongsTo('App\Article');
    }

    public function user()
    {
        return $this->belongsTo('App\Article');
    }
}
