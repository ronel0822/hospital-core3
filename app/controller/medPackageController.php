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
<<<<<<< Updated upstream
		$this->view('medPackage\medPackageView',[
			'medPackageInfo'=>$this->model->getPackageListInfo($id)
		]);
		$this->view->page_title = 'Drugs';
=======
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageView',[
			'medPackageInfo'=>$this->model->getPackageListInfo($id)
		]);
		$this->view->page_title = 'Medical Package';
>>>>>>> Stashed changes
		$this->view->render();
	}

	public function medPackageAvailList(){
		$this->model('medPackage');
<<<<<<< Updated upstream
		$this->view('medPackage\medPackageAvailList',['availData'=>$this->model->getAllAvailPackage()]);
=======
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageAvailList',['availData'=>$this->model->getAllAvailPackage()]);
>>>>>>> Stashed changes
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medCreatePackage(){
		$this->model('medPackage');
<<<<<<< Updated upstream
		$this->view('medPackage\medCreatePackage',['createPackage'=>$this->model->getAllAvailPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}


=======
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medCreatePackage',['createPackage'=>$this->model->getAllAvailPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}
>>>>>>> Stashed changes
}
