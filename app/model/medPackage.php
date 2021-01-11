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
				ON core3_med_avail.med_pack_id = core3_med_pack.id
				";
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
	
	//Create Package
	function createNewPackage($packageName,$packagePrice,$packageDesc){
    	$query = "INSERT INTO core3_med_pack VALUES (''?,?,?,'Active);";
    	$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$packageName);
		$stmt->bindParam(2,$packagePrice);
		$stmt->bindParam(3,$packageDesc);
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
    }

	
}