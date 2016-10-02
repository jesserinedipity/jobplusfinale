<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Experiences extends Model
{
 
	protected $primaryKey = 'id';
    protected $table= 'experiences';
    public $timestamps = false;

    protected $fillable =[
	    'jobname',
	    'skill_id',
	    'employer',
	    'year'
    ];
 		

}
