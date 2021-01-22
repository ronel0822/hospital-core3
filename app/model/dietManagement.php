<?php

class dietManagement extends Database{

	//Insert Diet Plan
	function addDietPlan($patient_id,$firstName,$middleName,$lastName){
    	$query = "INSERT INTO core3_diet_plan VALUES (null,?,?,?,?,Now());";
				$stmt = $this->connect()->prepare($query);
				$stmt->bindParam(1,$patient_id);
				$stmt->bindParam(2,$firstName);
				$stmt->bindParam(3,$middleName);
				$stmt->bindParam(4,$lastName);
				if($stmt->execute()){
					return true;
				}else{
					return false;
				}
    }
		
		//Insert Diet Plan
	function AddDietDay($tableName,$dietId,$breakfast,$lunch,$dinner){
		$query = "INSERT INTO $tableName VALUES (null,?,?,?,?,Now());";
			$stmt = $this->connect()->prepare($query);
			$stmt->bindParam(1,$dietId);
			$stmt->bindParam(2,$breakfast);
			$stmt->bindParam(3,$lunch);
			$stmt->bindParam(4,$dinner);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
	}

	function getLastDietPlan(){
		$query ="SELECT * FROM core3_diet_plan ORDER BY id DESC LIMIT 1";
			$stmt = $this->connect()->prepare($query);
			$stmt->execute();
			return $stmt->fetchAll();
	}
		

    function getAllDietPlan(){
		$query = "SELECT * FROM core3_diet_plan";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
		}
		
		function getAllPatientData(){
			$query = "SELECT * FROM patient_registration_tbl";
			$stmt = $this->connect()->prepare($query);
			$stmt->execute();
			return $stmt->fetchAll();
		}

		function getAllPatientAndDietPlan(){
			$query = "SELECT *
							FROM core3_diet_plan
							LEFT JOIN patient_registration_tbl
							ON core3_diet_plan.patient_id = patient_registration_tbl.patient_id";
			$stmt = $this->connect()->prepare($query);
			$stmt->execute();
			return $stmt->fetchAll();
		}
    
    function dietPlanViewInfo($id){
			$query = "SELECT *
						FROM core3_diet_plan
						LEFT JOIN patient_registration_tbl
						ON core3_diet_plan.patient_id = patient_registration_tbl.patient_id
						WHERE id =?";
			$stmt = $this->connect()->prepare($query);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			return $stmt->fetchAll();			
		}

		function getDietDay($tableName,$id){
			$query = "SELECT * FROM $tableName WHERE diet_id = $id";
			$stmt = $this->connect()->prepare($query);
			$stmt->execute();
			return $stmt->fetchAll();	
		}
		
    function getIdDate($id){
			$query = "SELECT *
						FROM core3_diet_plan
						LEFT JOIN diet_monday
						ON core3_diet_plan.id = diet_monday.diet_id
						LEFT JOIN diet_tuesday
						ON core3_diet_plan.id = diet_tuesday.diet_id
						LEFT JOIN diet_wednesday
						ON core3_diet_plan.id = diet_wednesday.diet_id
						LEFT JOIN diet_thursday
						ON core3_diet_plan.id = diet_thursday.diet_id
						LEFT JOIN diet_friday
						ON core3_diet_plan.id = diet_friday.diet_id
						LEFT JOIN diet_saturday
						ON core3_diet_plan.id = diet_saturday.diet_id
						LEFT JOIN diet_sunday
						ON core3_diet_plan.id = diet_sunday.diet_id WHERE core3_diet_plan.id = ?";
			$stmt = $this->connect()->prepare($query);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			return $stmt->fetchAll();		
		}
    /*function setDietPlan($patientName,$selected,$untilDate){
    	$query = "INSERT INTO core3_diet_sched VALUES (null,?,?,NOW(),?;";
    	$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$patientName);
		$stmt->bindParam(2,$selected);
		$stmt->bindParam(3,$untilDate);
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
    }*/

}
                
?>