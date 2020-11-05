<?php

namespace App\Http\Controllers;

use App\Article;
use App\UserAuction;
use Illuminate\Http\Request;

class ArticleController extends Controller
{

    public function getAll()
    {
        return Article::all();
    }

    public function viewArticle($id, Request $request)
    {

        $last_bid = UserAuction::where('article_id', $id)->get()->last();
        if ($last_bid) {
            if ($request->user()->id === $last_bid->user_id)
                return response()->json(['user_auction' => $last_bid, 'article' => $last_bid->article, 'can_bid' => false]);
            else
                return response()->json(['user_auction' => $last_bid, 'article' => $last_bid->article, 'can_bid' => true]);

        } else
            return response()->json(['user_auction' => null, 'article' => Article::findOrFail($id), 'can_bid' => true]);
    }
}
