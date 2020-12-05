<?php

class medPackageController extends Controller{

	public function medPackageList(){
		$this->model('medPackage');
		$this->view('medPackage\medPackageList',['mainData'=>$this->model->getAllMedPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageView(){
		$this->model('medPackage');
		$this->view('medPackage\medPackageView',['mainData'=>$this->model->getAllMedPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageAvailList(){
		$this->model('medPackage');
		$this->view('medPackage\medPackageAvailList',['availData'=>$this->model->getAllMedPackageAvail()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medCreatePackage(){
		$this->model('medPackage');
		$this->view('medPackage\medCreatePackage');
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}
	
}
