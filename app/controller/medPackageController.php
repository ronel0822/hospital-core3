<?php

class medPackageController extends Controller{

	public function medPackageList(){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageList',['mainData'=>$this->model->getAllMedPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageView($id){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageView',[
			'medPackageInfo'=>$this->model->getPackageListInfo($id)
		]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageAvailList(){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageAvailList',['availData'=>$this->model->getAllAvailPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageAvailView($id){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageAvailView',[
			'medPackageAvailView'=>$this->model->viewAvailInfo($id)
		]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medCreatePackage(){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medCreatePackage',[
			'createPackage'=>$this->model->getAllAvailPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}
}
