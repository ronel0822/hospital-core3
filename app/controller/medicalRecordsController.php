<?php
 
class medicalRecordsController extends Controller{

	public function medRecords(){
		$this->model('medicalRecords');
		$this->view('medicalRecords\medRecords',
			[
				'medicalRecords' => $this->model->getMedicalRecords()	
			]
		);
		$this->view->render();
	}
}

?>