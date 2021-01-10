<?php

class homis extends Database{

	//Get all drugs
	function getAllDrug(){
		$query = "SELECT * FROM core3_pharmacy_drugs ORDER BY drug_id DESC";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	//Total Counts Drugs
	function getDrugsTotal(){
		$query = "SELECT COUNT(drug_name) FROM core3_pharmacy_drugs";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	} 

	//Total Counts stocks
	function getStockDrugs(){
		$query = "SELECT COUNT(*) FROM core3_pharmacy_drug_stocks";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	//Total Counts Transactions
	function getDrugTransactions(){
		$query = "SELECT COUNT(*) FROM core3_pharmacy_drug_transaction";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	//Total Counts payment
	function getTotalPayments(){
		$query = "SELECT COUNT(*) FROM core3_pharmacy_payment";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	function getTotalDrugsCreated(){
		$query = "SELECT created_at,COUNT(created_at) FROM core3_pharmacy_drugs GROUP BY created_at";
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

}