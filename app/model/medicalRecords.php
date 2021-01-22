<?php

class medicalRecords extends Database{

	function getMedicalRecords(){
		$query = "SELECT * FROM doctors_appointment_tbl AS da INNER JOIN patient_registration_tbl as pr ON da.apt_id = pr.patient_id";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	function medicalRecordsView($id){
		$query = "SELECT * FROM doctors_appointment_tbl AS da INNER JOIN patient_registration_tbl as pr ON da.apt_id = pr.patient_id WHERE apt_id = ?";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$id);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	
}

?>