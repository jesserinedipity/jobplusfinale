<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Works extends Model
{
	protected $primaryKey = 'work_id';
	protected $table = 'works';
	public $timestamps = false;


	public function schedules(){
		return $this->belongsTo('App\Schedules','sched_id');
	}
	public function users(){
		return $this->belongsTo('App\User','applicant_id');
	}
}
