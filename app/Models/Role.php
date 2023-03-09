<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use Uuids;
    //use HasFactory;

    public function users()
    {
        return $this->hasMany(User::class);
    }
}
