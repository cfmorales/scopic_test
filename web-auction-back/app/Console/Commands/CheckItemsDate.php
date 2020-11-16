<?php

namespace App\Console\Commands;

use App\Item;
use App\Mail\ItemBill;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;
use Exception;

class CheckItemsDate extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'items:date';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = "Check if the item's end date is reached and send an email to the auction winner";

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        try {
            $now = now();
            $items = Item::whereNull('item_owner')->whereDate('auction_end', '<=', $now)->get();
            $info = 'Mail sent to ';
            foreach ($items as $item) {
                $date_end = new Carbon($item->auction_end);
                if ($now->greaterThanOrEqualTo($date_end)) {
                    $bids = $item->bids;
                    if ($bids->isNotEmpty()) {
                        $last_bid = $bids->last();
                        $item->item_owner = $last_bid->user->id;
                        $item->save();
                        Mail::to($last_bid->user->email)->send(new ItemBill($item, $last_bid->bid, $last_bid->user));
                        $info .= $last_bid->user->email;
                    }
                }
            }
            $this->info(
                $info
            );
        } catch (Exception $ex) {
            $this->info(
                'There was an error sending the email'
            );
        }
        return 0;
    }
}
