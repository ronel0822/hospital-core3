<?php

class test extends Database{

	protected static $tableName = 'test';
	protected $data;

	function getAllData(){
		$query = "SELECT * FROM ".$this->tableName;
		$stmt = $this->connect()->prepare($query);
		$stmt->execute();
		return $stmt->fetchAll();
	}

	function getDataById($id){
		$query = "SELECT * FROM accounts WHERE id = ?";
		$stmt = $this->connect()->prepare($query);
		$stmt->bindParam(1,$id);
		$stmt->execute();
		return $stmt->fetchAll();
	}

}