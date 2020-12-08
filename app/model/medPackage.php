<?php

class medPackage extends Database{

	//Get all drugs
	function getAllMedPackage(){
		$query = "SELECT * FROM core3_med_pack ORDER BY id DESC";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

}