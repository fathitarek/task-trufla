<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
   protected $fillable = ['id','title','vote_average'];

}
