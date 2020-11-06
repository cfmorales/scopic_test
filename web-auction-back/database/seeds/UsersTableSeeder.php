<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        \App\User::create([
            'name' => 'user',
            'email' => 'user@user.com',
            'password' => Hash::make('user'),
            'is_admin'=>0,
            'remember_token' => Str::random(10),
        ]);

        \App\User::create(
            [
                'name' => 'test2',
                'email' => 'test2@test.com',
                'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
                'is_admin'=>0,
                'remember_token' => Str::random(10),
            ]
        );
        \App\User::create(
            [
                'name' => 'admin',
                'email' => 'admin@admin.com',
                'password' => Hash::make('admin'), // password
                'is_admin'=>1,
                'remember_token' => Str::random(10),
            ]
        );
    }
}
