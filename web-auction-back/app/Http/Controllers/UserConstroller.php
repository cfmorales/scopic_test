<?php

namespace App\Http\Controllers;

use App\Item;
use Carbon\Carbon;
use Illuminate\Http\Request;

class UserConstroller extends Controller
{
    //

    public function user(Request $request)
    {
        return $request->user();
    }

    public function isAuthorized(Request $request)
    {
        return $request->user()->is_admin ? true : false;
    }

    public function getBidsHistory(Request $request)
    {
        $user = $request->user();
        $bids = $user->bids->groupBy('item_id');
        return $bids->map(function ($item, $key) use ($user) {
            $current_item = Item::find($key);
            $date_now = Carbon::now();
            $date_end = new Carbon($current_item->auction_end);
            if ($date_now->lessThan($date_end)) {
                $state = 'In progress';
            } else {
                $last_bid = $current_item->bids->last();
                if ($last_bid->user_id === $user->id) {
                    $state = 'Won';
                } else {
                    $state = 'Lost';
                }
            }
            return ['bids' => $item, 'state' => $state, 'item' => $current_item];
        });
    }

    public function getAwardedItems(Request $request)
    {
        $user = $request->user();
        return $user->awardedItems;
    }

    public function getAwardedItemById(Request $request, $id)
    {
        $user = $request->user();
        $item = $user->awardedItems()->findOrFail($id);
        if (isset($item))
            return [$item, $item->bids->last()->bid];
    }

}
