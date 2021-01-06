<?php

class medicalRecords extends Database{

	function getMedicalRecords(){
		$query = "SELECT * FROM core3_med_records";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}
}

?>