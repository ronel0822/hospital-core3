<?php

class medPackageController extends Controller{

	public function medPackageList(){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageList',[
			'mainData'=>$this->model->getAllMedPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageView($id){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageView',[
			'medPackageInfo'=>$this->model->getPackageListInfo($id)]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageAvailList(){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageAvailList',[
			'availData'=>$this->model->getAllAvailPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medPackageAvailView($id){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageAvailView',[
			'medPackageAvailView'=>$this->model->viewAvailInfo($id)]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function medCreatePackage(){
		$this->model('medPackage');
		$this->view('medPackage'.DIRECTORY_SEPARATOR.'medCreatePackage',[
			'createPackage'=>$this->model->getIdMedPackage()]);
		$this->view->page_title = 'Medical Package';
		$this->view->render();
	}

	public function createNewPackage(){
		$this->model('medPackage');
		if(isset($_POST['submit'])){
			if($this->model->createNewPackage(
					$_POST['id'],	
					$_POST['packageName'],
					$_POST['packagePrice'],
					$_POST['packageDesc'])){
				$class = "alert alert-success";
				$message = "Package Created Successfully!";
				$this->view('medPackage'.DIRECTORY_SEPARATOR.'medPackageList',[
					'mainData'=>$this->model->getAllMedPackage(),
					'class'=>$class,'message'=>$message]);
				$this->view->page_title = 'Medical Package';
				$this->view->render();
			}

		}else{
			$class = "alert alert-warning";
			$message = "No data found. <a href='/medPackage/medCreatePackage'>Click here.</a> to refresh.";
			$this->view('medPackage'.DIRECTORY_SEPARATOR.'medCreatePackage',[
				'medCreatePackage'=>$this->model->getAllAvailPackage(),
				'class'=>$class,'message'=>$message]);
			$this->view->page_title = 'Medical Package';
			$this->view->render();
		}
	}


}
