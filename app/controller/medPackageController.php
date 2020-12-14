<?php

class medPackageController extends Controller{

	public function medPackageList(){
		$this->model('medPackage');
		$this->view('medPackage\medPackageList',['mainData'=>$this->model->getAllMedPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageView($id){
		$this->model('medPackage');
		$this->view('medPackage\medPackageView',[
			'medPackageInfo'=>$this->model->getPackageListInfo($id)
		]);
		$this->view->page_title = 'Drugs';
		$this->view->render();
	}

	public function medPackageAvailList(){
		$this->model('medPackage');
		$this->view('medPackage\medPackageAvailList',['availData'=>$this->model->getAllAvailPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medCreatePackage(){
		$this->model('medPackage');
		$this->view('medPackage\medCreatePackage',['createPackage'=>$this->model->getAllAvailPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}


}
