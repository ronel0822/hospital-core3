<?php

class medPackageController extends Controller{

	public function medPackageList(){
		$this->model('medPackage');
		$this->view('medPackage\medPackageList',['mainData'=>$this->model->getAllMedPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

}
