<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Andres Arroyo',
            'phone' => '6181387157',
            'email' => 'jaime.andres81@hotmail.com',
            'profile' => 'ADMINISTRADOR',
            'status' => 'ACTIVO',
            'password' => bcrypt('12345678')
        ]);
        User::create([
            'name' => 'Rodrigo Emmanuel',
            'phone' => '6181387196',
            'email' => 'rodrigo.emmanuel@hotmail.com',
            'profile' => 'EMPLEADO',
            'status' => 'ACTIVO',
            'password' => bcrypt('1234')
        ]);
    }
}
