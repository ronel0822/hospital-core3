<?php
 
class dietManagementController extends Controller{

	public function dietPlanList(){
		$this->model('dietManagement');
		$this->view('dietManagement'.DIRECTORY_SEPARATOR.'dietPlanList',[
			'dietPlanData'=>$this->model->getAllDietPlan(),
			'patientData'=>$this->model->getAllPatientData(),
			'getPatientAndDietPlan'=>$this->model->getAllPatientAndDietPlan(),
			'getPatientAndDietPlan1'=>$this->model->getAllPatientAndDietPlan()
			]);
		$this->view->page_title = 'Diet Plan List';
		$this->view->render();
	}

	public function dietPlanView($id){
		$this->model('dietManagement');
		$this->view('dietManagement'.DIRECTORY_SEPARATOR.'dietPlanView',[
			'dietPlanView'=>$this->model->dietPlanViewInfo($id),
			'setDate'=>$this->model->getIdDate($id),
			'monday' => $this->model->getDietDay("diet_monday",$id),
			'tuesday' => $this->model->getDietDay("diet_tuesday",$id),
			'wednesday' => $this->model->getDietDay("diet_wednesday",$id),
			'thursday' => $this->model->getDietDay("diet_thursday",$id),
			'friday' => $this->model->getDietDay("diet_friday",$id),
			'saturday' => $this->model->getDietDay("diet_saturday",$id),
			'sunday' => $this->model->getDietDay("diet_sunday",$id)
			]);
		$this->view->page_title = 'Diet Plan View Information';
		$this->view->render();
	}

	public function createDietPlan(){
		$this->model('dietManagement');
		$this->view('dietManagement'.DIRECTORY_SEPARATOR.'createDietPlan',[
			'patientData'=>$this->model->getAllPatientData()
			]);
		$this->view->page_title = 'Create Diet Plan';
		$this->view->render();
	}

	public function addDietPlan(){
		$this->model('dietManagement');
		if(isset($_POST['dietPlan_btn'])){
			if($this->model->addDietPlan($_POST['patient_id'],$_POST['firstName'],$_POST['middleName'],$_POST['lastName'])){
				$alert = "alert alert-success";
				$message = "Diet Plan Created!";
				$diet = $this->model->getLastDietPlan();
				$id = "";
				foreach ($diet as $data) {
					$id = $data['id'];
				}
				if($this->model->AddDietDay("diet_monday",$id,$_POST['m_breakfast'],$_POST['m_lunch'],$_POST['m_dinner'])){
				}
				if($this->model->AddDietDay("diet_tuesday",$id,$_POST['t_breakfast'],$_POST['t_lunch'],$_POST['t_dinner'])){
				}
				if($this->model->AddDietDay("diet_wednesday",$id,$_POST['w_breakfast'],$_POST['w_lunch'],$_POST['w_dinner'])){
				}
				if($this->model->AddDietDay("diet_thursday",$id,$_POST['th_breakfast'],$_POST['th_lunch'],$_POST['th_dinner'])){
				}
				if($this->model->AddDietDay("diet_friday",$id,$_POST['f_breakfast'],$_POST['f_lunch'],$_POST['f_dinner'])){
				}
				if($this->model->AddDietDay("diet_saturday",$id,$_POST['sa_breakfast'],$_POST['sa_lunch'],$_POST['sa_dinner'])){
				}
				if($this->model->AddDietDay("diet_sunday",$id,$_POST['su_breakfast'],$_POST['su_lunch'],$_POST['su_dinner'])){
				}
			}
			$this->view('dietManagement'.DIRECTORY_SEPARATOR.'createDietPlan',[
				'message'=>$message,
				'alert'=>$alert
			]);
			$this->view->page_title = 'Create Diet Plan';
			$this->view->render();
			
		}else{
			
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