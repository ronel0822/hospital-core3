<?php

class medicalRecords extends Database{

	function getMedicalRecords(){
		$query = "SELECT * FROM core3_med_records";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	function medicalRecordsView($id){
		$query = "SELECT * FROM core3_med_records";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$id);
		$stmt->execute();
		return $stmt->fetchAll();
	}
}

?>