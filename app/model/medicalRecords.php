<?php

class medicalRecords extends Database{

	function getMedicalRecords(){
		$query = "SELECT * FROM patient_registration_tbl";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	function medicalRecordsView($id){
		$query = "SELECT * FROM patient_registration_tbl WHERE patient_id =?";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$id);
		$stmt->execute();
		return $stmt->fetchAll();			
}
}

?>