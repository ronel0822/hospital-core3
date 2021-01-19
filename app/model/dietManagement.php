<?php

class dietManagement extends Database{

	//Insert Diet Plan
	function addDietPlan($disease,$breakfast,$lunch,$dinner){
    	$query = "INSERT INTO core3_diet_plan VALUES (null,?,?,?,?);";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$disease);
		$stmt->bindParam(2,$breakfast);
		$stmt->bindParam(3,$lunch);
		$stmt->bindParam(4,$dinner);
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
    }
    
    function getAllDietPlan(){
		$query = "SELECT * FROM core3_diet_plan";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
    }
    
    function dietPlanViewInfo($id){
		$query = "SELECT * FROM core3_diet_plan WHERE id =?";
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