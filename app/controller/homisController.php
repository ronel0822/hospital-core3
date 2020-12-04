<?php

class homisController extends Controller{

	public function dashboard(){
		$this->model('homis');
		$this->model('pharmacy');
		$this->view('homis\dashboard',
			[
				'dataRecords1'=>$this->model->getAllDrug(),
				'dataRecords2'=>$this->model->getDrugById(5)
			]
		);
		$this->view->render();
	}

}