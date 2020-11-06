<?php

namespace App\Http\Controllers;

use App\Http\Requests\ItemRequest;
use App\Item;
use App\UserAuction;
use Illuminate\Http\Request;

class ItemController extends Controller
{

    public function getAll(Request $request)
    {
        if (isset($request->name) && isset($request->description)) {
            return Item::where([['description', 'LIKE', '%' . $request->description . '%'],['name', 'LIKE', '%' . $request->name . '%']])
                ->get();
        } else if (isset($request->description)) {
            return Item::where('description', 'LIKE', '%' . $request->description . '%')->get();
        } else if (isset($request->name)) {
            return Item::where('name', 'LIKE', '%' . $request->name . '%')->get();
        } else {
            return Item::all();
        }
    }

    public function viewItem($id, Request $request)
    {
        $last_bid = UserAuction::where('item_id', $id)->orderBy('id', 'desc')->get();
        if ($last_bid->first()) {
            if ($request->user()->id === $last_bid->first()->user_id)
                return response()->json(['user_auction' => $last_bid->first(),
                    'item' => $last_bid->first()->item,
                    'can_bid' => false,
                    'history' => $last_bid]);
            else
                return response()->json(['user_auction' => $last_bid->first(),
                    'item' => $last_bid->first()->item,
                    'can_bid' => true,
                    'history' => $last_bid]);

        } else
            return response()->json(['user_auction' => null, 'item' => Item::findOrFail($id), 'can_bid' => true, 'history' => null]);
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