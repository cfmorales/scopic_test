<?php

namespace App\Http\Controllers;

use App\Http\Requests\ItemRequest;
use App\Item;
use App\UserAuction;
use Illuminate\Http\Request;
use Carbon\Carbon;

class ItemController extends Controller
{

    public function getAll(Request $request)
    {
        $item = Item::where([
            ['description', 'LIKE', '%' . $request->description . '%'],
            ['name', 'LIKE', '%' . $request->name . '%']])->with(['bids' => function ($query) {
            $query->latest();
        }])->get();
        return $item->toArray();

    }

    public function viewItem($id, Request $request)
    {
        $last_bid = UserAuction::where('item_id', $id)->orderBy('id', 'desc')->get();

        if ($last_bid->first()) {
            $response = array('user_auction' => $last_bid->first(),
                'item' => $last_bid->first()->item,
                'history' => $last_bid,
                'time_left' => $this->getTimeDifference($last_bid->first()->item),
                'item_owner' => $last_bid->first()->item->itemOwner,
                );
            if ($request->user()->id === $last_bid->first()->user_id) {
                return response()->json(array_merge($response,[
                    'can_bid' => false,
                ]));
            } else {
                return response()->json(array_merge($response,[
                    'can_bid' => true,
                ]));
            }

        } else
            return response()->json(['user_auction' => null, 'item' => Item::findOrFail($id),
                'can_bid' => true, 'history' => null,
                'time_left' => $this->getTimeDifference(Item::findOrFail($id)), 'item_owner' => null]);
    }

    private function getTimeDifference($item)
    {
        $date_now = Carbon::now();
        $date_end = new Carbon($item->auction_end);

        if ($date_now->lessThan($date_end)) {
            $diff_days = $date_now->diffInDays($date_end);
            if ($diff_days == 0) {
                $seconds_left = sizeof($date_now->secondsUntil($date_end));
            } else {
                $seconds_left = $date_end->secondsUntilEndOfDay();
            }
            return [$diff_days, $seconds_left];
        } else {
            return [0, 0];
        }
    }

    public function store(ItemRequest $request)
    {
        return Item::create($request->toArray());
    }

    public function update(ItemRequest $request)
    {
        $item = Item::find($request->itemId);
        $item->name = $request->name;
        $item->description = $request->description;
        $item->auction_end = $request->auction_end;
        $item->image_url = $request->image_url;
        $item->save();
        return response($item, 200);
    }

    public function delete(Request $request)
    {
        $item = Item::findOrFail($request->itemId);
        $item->delete();
        return $item;
    }

}
