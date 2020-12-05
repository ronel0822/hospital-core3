<?php

class medPackage extends Database{

	//Get all drugs
	function getAllMedPackage(){
		$query = "SELECT * FROM core3_med_pack ORDER BY id DESC";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}
	/*function getMedPackageViewById($id){
		$query = "SELECT * FROM CORE3_med_pack 
				INNER JOIN core3_med_pack_inc 
				ON CORE3_med_pack.id = core3_med_pack_inc.med_pack_id
				WHERE core3_med_pack.id";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$id);
		$stmt->execute();
		return $stmt->fetchAll();
	}*/

	function getAllMedPackageAvail(){
		$query = "SELECT * FROM core3_med_avail 
				INNER JOIN core3_med_pack
				ON core3_med_avail.med_pack_id = core3_med_pack.id";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}
}