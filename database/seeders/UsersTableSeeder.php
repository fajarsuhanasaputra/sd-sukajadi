<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Teacher;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         // create user admin & pengurus
         User::create([
            'name' => 'Admin1',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('11111111'),
            'roles' => 'ADMIN'
        ]);

        // create guru
        Teacher::create([
            'name' => 'Guru1',
            'nip' => '123456789',
            'study' => 'Pendidikan Teknik Informatika',

        ]);
    }
}
