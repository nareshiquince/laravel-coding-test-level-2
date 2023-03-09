<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use Uuids;

    protected $fillable = [
        'title',
        'description',
        'status',
        'project_id',
        'user_id'
    ];
}
