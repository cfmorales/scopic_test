<?php

namespace App\Http\Controllers;

use App\Item;
use App\Mail\ItemBill;
use App\Mail\NewBid;
use App\UserAuction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Validator;
use Exception;

class UserAuctionController extends Controller
{
    public function saveBid(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'bid' => 'required',
        ]);
        if ($validator->fails()) {
            return response($validator->getMessageBag()->toArray(), 400);
        } else {

            $auction = new UserAuction();
            $auction->bid = $request->bid;
            $auction->user_id = $request->user()->id;
            $auction->item_id = $request->item_id;
            $auction->save();
            $this->sendEmailNewBid($auction->item_id, $auction->bid);
            return $auction;
        }
    }

    private function sendEmailNewBid($item_id, $bid)
    {
        try {
            $bids = UserAuction::where('item_id', $item_id)->with('user')->get();
            $emails = $bids->map(function ($item) {
                return $item->user->email;
            })->unique()->toArray();
            $item = Item::find($item_id);
            Mail::to($emails)->send(new NewBid($item, $bid));
            return response('done', 200);
        } catch (Exception $ex) {
            return response()->json(array($ex->getMessage()));
        }
    }

    public function sendEmailAwardedItem($id)
    {
        try {
            $item = Item::findOrFail($id);
            $bids = $item->bids;
            if ($bids->isNotEmpty() && isset($item->itemOwner)) {
                $last_bid = $bids->last();
                Mail::to($last_bid->user->email)->send(new ItemBill($item, $last_bid->bid, $item->itemOwner));
                return response([], 200);
            } else {
                return response([], 500);
            }
        } catch (Exception $ex) {
            return response()->json(array($ex->getMessage()));
        }
    }
}
