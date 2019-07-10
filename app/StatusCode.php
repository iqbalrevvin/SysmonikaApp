<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StatusCode extends Model
{
    public function Responden()
    {
        return $this->hasMany(Responden::Class);
    }
}
