<?php

class homisController extends Controller{

	public function dashboard(){
		$this->model('homis');
		$this->view('homis'.DIRECTORY_SEPARATOR.'dashboard',
			[
				'dailyDrugRecords'=>$this->model->getTotalDrugsCreated(),
				'dataRecords1'=>$this->model->getAllDrug(),
				'dataRecords2'=>$this->model->getDrugsTotal(),
				'dataRecords3'=>$this->model->getStockDrugs(),
				'dataRecords4'=>$this->model->getDrugTransactions(),
				'dataRecords5'=>$this->model->getTotalPayments()
			]
		);
		$this->view->render();
	}

}
?>