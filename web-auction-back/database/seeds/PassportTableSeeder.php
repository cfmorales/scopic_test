<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PassportTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('oauth_clients')->insert([
            'user_id' => null,
            'name' => 'Laravel Personal Access Client',
            'secret' => 'hN3Hk60akbmH1FYMwxdYnwddfprHnpslZxxWzRDG',
            'provider' => null,
            'redirect' => 'http://localhost',
            'personal_access_client' => 1,
            'password_client' => 0,
            'revoked' => 0,
            'created_at' => '2020-11-05 13:41:07',
            'updated_at' => '2020-11-05 13:41:07'
        ]);
        DB::table('oauth_clients')->insert([
            'user_id' => null,
            'name' => 'Laravel Personal Access Client',
            'secret' => '7R5Ahiv2xteJB0XKZ3N8RPYDG17VQbN9TNOLRvCg',
            'provider' => 'users',
            'redirect' => 'http://localhost',
            'personal_access_client' => 0,
            'password_client' => 1,
            'revoked' => 0,
            'created_at' => '2020-11-05 13:41:07',
            'updated_at' => '2020-11-05 13:41:07'
        ]);
        DB::table('oauth_personal_access_clients')->insert([
            'client_id' => 1,
            'created_at' => '2020-11-05 13:41:07',
            'updated_at' => '2020-11-05 13:41:07'
        ]);
    }
}
