<?php
 
class medicalRecordsController extends Controller{

	public function medRecords(){
		$this->model('medicalRecords');
		$this->view('medicalRecords'.DIRECTORY_SEPARATOR.'medRecords',['medicalRecords'=>$this->model->getMedicalRecords()]);
		$this->view->page_title = 'Medical Records';
		$this->view->render();
	}

	function patientRecords($id){
		$this->model('medicalRecords');
		$this->view('medicalRecords'.DIRECTORY_SEPARATOR.'medRecords-view',['patientRecord'=>$this->model->medicalRecordsView($id)]);
		$this->view->page_title = 'Patient Records';
		$this->view->render();
	}

	function patientRecordsPdf($id){
		$this->model('medicalRecords');
		$this->view('medicalRecords'.DIRECTORY_SEPARATOR.'medRecords-pdf',['patientRecordPdf'=>$this->model->medicalRecordsView($id)]);
		$this->view->page_title = 'Print Records';
		$this->view->render();
	}
	

	
}

?>