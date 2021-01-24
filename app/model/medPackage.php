<?php

class medPackage extends Database{

	//Get all Medical Package
	function getAllMedPackage(){
		$query = "SELECT * FROM core3_med_pack ORDER BY id DESC";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	//Get all Avail Package
	function getAllAvailPackage(){
		$query = "SELECT * FROM core3_med_avail 
				INNER JOIN core3_med_pack
				ON core3_med_avail.med_pack_id = core3_med_pack.id";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	//View Package information
	function getPackageListInfo($id){
		$query = "SELECT * FROM CORE3_med_pack 
				INNER JOIN core3_med_pack_inc 
				ON CORE3_med_pack.id = core3_med_pack_inc.med_pack_id
				WHERE core3_med_pack.id =?";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$id);
		$stmt->execute();
		return $stmt->fetchAll();			
	}

	//View Avail Information 
	function viewAvailInfo($id){
		$query = "SELECT * FROM core3_med_avail 
				INNER JOIN core3_med_pack
				ON core3_med_avail.med_pack_id = core3_med_pack.id
				INNER JOIN core3_med_pack_inc 
				ON core3_med_pack.id = core3_med_pack_inc.med_pack_id
				WHERE core3_med_avail.id = ?";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$id);
		$stmt->execute();
		return $stmt->fetchAll();			
	}
	
	//Insert Create Package
	function createNewPackage($id,$packageName,$packagePrice,$packageDesc){
    	$query = "INSERT INTO core3_med_pack 
				VALUES (?,?,?,?,'Active');";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$id);
		$stmt->bindParam(2,$packageName);
		$stmt->bindParam(3,$packagePrice);
		$stmt->bindParam(4,$packageDesc);
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
	}

	function insertInclusion($name,$id){
		foreach ($name as $data) {
			$query = "INSERT INTO core3_med_pack_inc 
			VALUES (null,?,?);";
			$stmt = $this->connect()->prepare($query);
			$stmt->bindParam(1,$data);
			$stmt->bindParam(2,$id);
			$stmt->execute();
		}
		return true;
	}
	
	//get Id Medical Package
	function getIdMedPackage(){
		$query = "SELECT * FROM core3_med_pack 
				WHERE id=(SELECT max(id) 
				FROM core3_med_pack);";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	//Add Patient Avail Package
	function addPatientAvail($medPackId,$patientName,$department,$exam_date){
    	$query = "INSERT INTO core3_med_avail 
				VALUES (null,?,?,?,now(),?)";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$medPackId);
		$stmt->bindParam(2,$patientName);
		$stmt->bindParam(3,$department);
		$stmt->bindParam(4,$exam_date);
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
	}

}