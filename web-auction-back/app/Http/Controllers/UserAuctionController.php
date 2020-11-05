<?php

namespace App\Http\Controllers;

use App\UserAuction;
use Illuminate\Http\Request;
use Validator;

class UserAuctionController extends Controller
{
    public function saveBid(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'bid' => 'required',
        ]);
        if ($validator->fails()) {
            return response($validator->getMessageBag()->toArray(),400);
        } else {

            $auction = new UserAuction();
            $auction->bid = $request->bid;
            $auction->user_id = $request->user()->id;
            $auction->item_id = $request->item_id;
            $auction->save();
            return $auction;
        }
    }
}
