<?php

use Illuminate\Database\Seeder;

class ItemsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $images_array = [
            'https://news.artnet.com/app/news-upload/2020/10/rudolph-256x256.jpg',
            'https://news.artnet.com/app/news-upload/2020/10/usher-and-james-Jean-256x256.jpg',
            'https://news.artnet.com/app/news-upload/2020/10/AN_4607-256x256.jpg',
            'https://news.artnet.com/app/news-upload/2020/10/Sothebys-Alberto-Giacometti-Grande-femme-I-copy-256x256.jpg',
            'https://news.artnet.com/app/news-upload/2020/10/1_01.jpg',
            'https://doublethedonation.com/tips/wp-content/uploads/2016/10/signed-football-1604021_1280-2.jpg',
            'https://dyn1.heritagestatic.com/lf?set=path%5B6%2F3%2F4%2F1%2F6341545%5D%2Csizedata%5B850x600%5D&call=url%5Bfile%3Aproduct.chain%5D',
            'https://dyn1.heritagestatic.com/lf?set=path%5B1%2F7%2F5%2F0%2F6%2F17506538%5D%2Csizedata%5B850x600%5D&call=url%5Bfile%3Aproduct.chain%5D',
            'https://s3.amazonaws.com/images.charitybuzz.com/images/301493/original.JPG?1497967965',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQeM50EeG4RUdrM8hL9IWsAv00peJvUOk_qaQ&usqp=CAU',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSdx2pc6u3VJFQXorkFeRLAI7BBvkdY8t8QqQ&usqp=CAU',
            'https://cdn.classicdigest.com/live/carimg/72601_72700/72613_abff8cc234eee813.jpg'
        ];
        $faker = Faker\Factory::create();
        for ($i = 0; $i < count($images_array); $i++)
            \App\Item::create([
                'name' => $faker->name,
                'description' => $faker->sentence(10),
                'auction_end' => \Carbon\Carbon::now()->addDays($i),
                'image_url' => $images_array[$i],
            ]);
    }
}
