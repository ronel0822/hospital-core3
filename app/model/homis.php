<?php

class homis extends Database{

	//Get all drugs
	function getAllDrug(){
		$query = "SELECT * FROM core3_pharmacy_drugs ORDER BY drug_id DESC";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

}