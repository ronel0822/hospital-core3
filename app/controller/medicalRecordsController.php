<?php
 
class medicalRecordsController extends Controller{

	public function medRecords(){
		$this->model('medicalRecords');
		$this->view('medicalRecords'.DIRECTORY_SEPARATOR.'medRecords',['medicalRecords'=>$this->model->getMedicalRecords()]);
		$this->view->page_title = 'Medical Records';
		$this->view->render();
	}

	function medRecordsView($id){
		$this->model('medicalRecords');
		$this->view('medicalRecords'.DIRECTORY_SEPARATOR.'medRecordsView',['medView'=>$this->model->medicalRecordsView($id)]);
		$this->view->page_title = 'Records view';
		$this->view->render();
	}

	function medRecordsPdf($id){
		$this->model('medicalRecords');
		$this->view('medicalRecords'.DIRECTORY_SEPARATOR.'medRecords-pdf',['medRecPdf'=>$this->model->medicalRecordsView($id)]);
		$this->view->page_title = 'Medical Information';
		$this->view->render();
	}
}

?>