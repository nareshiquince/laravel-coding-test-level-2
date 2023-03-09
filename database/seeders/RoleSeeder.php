<?php

namespace Database\Seeders;

use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use App\Models\Role;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Role::insert([
        ['id'=>Str::uuid()->toString(), 'name'=>'ADMIN'],
        ['id'=>Str::uuid()->toString(), 'name'=>'PRODUCT_OWNER'],
        ['id'=>Str::uuid()->toString(), 'name'=>'TEAM_MEMBER']
       ]);
    }
}
