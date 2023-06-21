<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Outmutation extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function student(){
        return $this->belongsTo(Student::class, 'student_id', 'id');
    }
}
