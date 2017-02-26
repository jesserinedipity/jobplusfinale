<?php

namespace App;
use App\Schedules;
use DateTime;
use App\Jobs;
use App\Works;
class JobRank{

	public function array_push_assoc($array, $key, $value){
		$array[$key] = $value;
		return $array;
	}

	public function getLocationPoints($distance){
		$points = 0;

		if($distance < 1000){
			return  $points  = 100;
		}
		else if($distance >= 1000 && $distance < 1500){
			return  $points = 90;
		}
		else if($distance >= 1500 && $distance < 2000){
			return   $points = 85;
		}
		else if($distance >= 2000 && $distance < 2500){
			return  $points = 80;
		}
		else if($distance >= 2500 && $distance < 3000){
			return  $points = 75;
		}
		else if($distance >= 3000 && $distance < 3500){
			return  $points = 70;
		}
		else if($distance >= 3500 && $distance < 4000){
			return  $points = 65;
		}
		else if($distance >= 4000 && $distance < 4500){
			return  $points = 60;
		}
		else if($distance >= 4500 && $distance < 5000){
			return  $points = 55;
		}
		else if($distance >= 5000){
			return  $points = 50;
		}
	}

	public function getSkillPoints(&$userskill,$jobid){
		$points = 0;
		$jskill = [];
		$job_skill = Job_Skill::where('job_id',$jobid)->get();
		foreach($job_skill as $jsk){
			$jskill[] = $jsk->skill_id;
		}
		$counter = count($jskill);
		$lack = 0;
		for($i = 0; $i<$counter; $i++){
			if(!in_array($jskill[$i],$userskill)){
				$lack++;
			}
		}
		if($lack == 0){
			$points = 100;
		}
		else if($lack == 1){
			$points = 90;
		}
		else if($lack == 2){
			$points = 85;
		}
		else if($lack == 3){
			$points = 80;
		}
		else if($lack > 3){
			$points = 75;
		}
		return $points;
	}

	public function getHistoryPoints($workhistoryID,$jobid){
		$work_history = Work_Logs::where('work_id',$workhistoryID)->first();
		if(count($work_history) < 1){
			$points = 0;
			return $points;
		}
		$history_job = Jobs::where('job_id',$work_history->job_id)->first();
		$history_job_skill = Job_Skill::where('job_id',$work_history->job_id)->get();

		$current_job = Jobs::where('job_id',$jobid)->first();
		$current_job_skill = Job_Skill::where('job_id',$current_job->job_id)->get();

		$ctrEmployer = 0;
		$ctrSkills = 0;
		$points = 0;

		if($history_job->user_id == $current_job->user_id){
			$ctrEmployer = 1;
		}

		$historySkill = [];
		$currentSkill = [];

		foreach($history_job_skill as $hjs){
			$historySkill[] = $hjs->skill_id;
		}
		foreach($current_job_skill as $cjs){
			$currentSkill[] = $cjs->skill_id;
		}

		$intersect = array_intersect($historySkill, $currentSkill);
		if(count($intersect) > 0){
			$ctrSkills = 1;
		}

		if($ctrSkills == 1 && $ctrEmployer == 1){
			$points = 1;
		}   
		else{
			$points = 0;
		}
		return $points;

	}

	public function getHistory($jobid,$userid){
		$histwork = Works::where('applicant_id',$userid)->where('status',4)->get();

		if(count($histwork) < 1){
			$points = 80;
			return $points;
		}

		$flag = 0;
		foreach($histwork as $hw){
			if($flag == 0){
				$flag = $this->getHistoryPoints($hw->work_id,$jobid);
			}
		}

		if($flag == 0){
			$points = 80;
		}
		else{
			$points = 100;
		}
		return $points;
	}

	public function rank($a, $b)
	{
		if ($a == $b) {
			return 0;
		}
		return ($a > $b) ? -1 : 1;
	}

	public function getConflict($usersched,$start,$end,$jobid){
		foreach($usersched as $usch){
			$ids[] = $usch->job_id;
			$jstart = 	 new DateTime(''.$start.'UTC+8:00');
			$jend = 	 new DateTime(''.$end.'UTC+8:00');
			$userstart = new DateTime(''.$usch->start.'UTC+8:00');
			$userend = 	 new DateTime(''.$usch->end.'UTC+8:00');

			if($userstart == $jstart && $userend == $jend){
				return 1;
			}
			elseif($userstart >= $jstart && $userstart <= $jend){
				return 1;
			}
			elseif ($userend >= $jstart && $userend <= $jend) {
				return 1;
			}
			else{	
				return 0;
			}
		}
	}

	public function removeConflict($userid,$address){
		$today = new DateTime;
		$uwschedID = [];
		$ids = [];
		$job = [];
		$finalids = [];
		$flagss =[];

		$userwork = Works::where('applicant_id',$userid)
		->whereNotIn('status',[4,5])
		->get();

		if(count($userwork) > 0){
			foreach($userwork as $us){
				$uwschedID[] = $us->sched_id;
			}

			$usersched = Schedules::whereIn('schedule_id',$uwschedID)
			->where('start','>=',$today)
			->get();

			foreach($address as $add){
				$ids[] = $add->jobid;
			}

			$jobsched = Schedules::whereIn('job_id',$ids)
			->where('start','>=',$today)
			->get();

			$flag = 0;
			foreach($jobsched as $jsch){
				$flag = $this->getConflict($usersched,$jsch->start,$jsch->end,$jsch->job_id);
				$flagss = $this->array_push_assoc($flagss,$jsch->job_id,$flag);
				if($flag == 0){
					$finalids[] = $jsch->job_id; 		
				}
			}
		
			return $finalids;
		}
		else{		
			return $finalids;
		}
	}
}