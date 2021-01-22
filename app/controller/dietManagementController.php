<?php
 
class dietManagementController extends Controller{

	public function dietPlanList(){
		$this->model('dietManagement');
		$this->view('dietManagement'.DIRECTORY_SEPARATOR.'dietPlanList',['dietPlanData'=>$this->model->getAllDietPlan()]);
		$this->view->page_title = 'Diet Plan List';
		$this->view->render();
	}

	public function dietPlanView($id){
		$this->model('dietManagement');
		$this->view('dietManagement'.DIRECTORY_SEPARATOR.'dietPlanView',[
			'dietPlanView'=>$this->model->dietPlanViewInfo($id)]);
		$this->view->page_title = 'Diet Plan View Information';
		$this->view->render();
	}

	public function createDietPlan(){
		$this->view('dietManagement'.DIRECTORY_SEPARATOR.'createDietPlan');
		$this->view->page_title = 'Create Diet Plan';
		$this->view->render();
	}

	public function addDietPlan(){
		$this->model('dietManagement');
		if(isset($_POST['dietPlan_btn'])){
			if($this->model->addDietPlan($_POST['disease'],$_POST['breakfast'],$_POST['dp_desc'],$_POST['lunch'],$_POST['dinner'])){
				$class = "alert alert-success";
				$message = "Diet Plan Created!";
				$this->view('dietManagement'.DIRECTORY_SEPARATOR.'createDietPlan');
				$this->view->page_title = 'Create Diet Plan';
				$this->view->render();
			}
			
		}else{
			$class = "alert alert-warning";
			$message = "No data found. <a href='/dietManagement/createDietPlan'>Click here.</a> to refresh.";
			$this->view('dietManagement'.DIRECTORY_SEPARATOR.'createDietPlan',['addDietPlan'=>$this->model->addDietPlan(),'class'=>$class,'message'=>$message]);
			$this->view->page_title = 'Create Diet Plan';
			$this->view->render();
		}
	}

	/*public function setDietPlan(){
		$this->model('dietManagement');
		$message = "";
		$alert = "alert alert-";
		if(isset($_POST['setSubmit'])){
			if($this->model->setDietPlan($_POST['patientName'],$_POST['selected'],$_POST['untilDate'])){
				$message = "Patient Scheduling Success!";
				$alert.='success';
				$this->view('dietManagement'.DIRECTORY_SEPARATOR.'dietPlanList',[
					'dietPlanView'=>$this->model->dietPlanViewInfo($id),
					'message'=>$message,
					'alert'=>$alert
				]);
				$this->view->page_title = 'Set Patient Schedule';
				$this->view->render();
			}
		}
	}*/
}

?>