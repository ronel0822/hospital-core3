<?php

class pharmacyController extends Controller{

	public function index(){
		$this->model('pharmacy');
		$this->view('Pharmacy'.DIRECTORY_SEPARATOR.'drugList',['mainData'=>$this->model->getAllDrug()]);
		$this->view->page_title = 'Drugs';
		$this->view->render();
	}

	public function drugInfo($id){
		$this->model('pharmacy');
		$this->view('Pharmacy'.DIRECTORY_SEPARATOR.'drugInfo',[
			'drug'=>$this->model->getDrugInformation($id),
			'stock'=>$this->model->getStocks($id)
		]);
		$this->view->page_title = 'Drugs';
		$this->view->render();
	}

	public function addDrug(){
		$this->model('pharmacy');
		if(isset($_POST['submit'])){
			if($this->model->insertDrug($_POST['name'],$_POST['type'],$_POST['description'],$_POST['price'])){
				$class = "alert alert-success";
				$message = "Drug added";
				$this->view('Pharmacy'.DIRECTORY_SEPARATOR.'drugList',['mainData'=>$this->model->getAllDrug(),'class'=>$class,'message'=>$message]);
				$this->view->page_title = 'Drugs';
				$this->view->render();
			}
			
		}else{
			$class = "alert alert-warning";
			$message = "No data found. <a href='/Pharmacy/index'>Click here.</a> to refresh.";
			$this->view('Pharmacy'.DIRECTORY_SEPARATOR.'drugList',['mainData'=>$this->model->getAllDrug(),'class'=>$class,'message'=>$message]);
			$this->view->page_title = 'Drugs';
			$this->view->render();
		}
	}

	public function addStock($id){
		$this->model('pharmacy');
		$message = "";
		$alert = "alert alert-";
		if(isset($_POST['submitStock'])){
			if($this->model->addStock($id,$_POST['quantity'],$_POST['expirationDate'])){
				$message = "Stock added.";
				$alert.='success';
				$this->view('Pharmacy'.DIRECTORY_SEPARATOR.'drugInfo',[
					'drug'=>$this->model->getDrugInformation($id),
					'stock'=>$this->model->getStocks($id),
					'message'=>$message,
					'alert'=>$alert
				]);
				$this->view->page_title = 'Drugs';
				$this->view->render();
				// header("Location: /pharmacy/drugInfo/".$id);
			}
		}
	}

	function transaction(){
		$this->model('pharmacy');
		$this->view('Pharmacy'.DIRECTORY_SEPARATOR.'transaction',['trans'=>$this->model->transactionView()]);
		$this->view->page_title = 'Transaction';
		$this->view->render();
	}

	function transactionView($id){
		$this->model('pharmacy');
		$this->view('Pharmacy'.DIRECTORY_SEPARATOR.'transaction-view',['trans'=>$this->model->viewTransactionView($id)]);
		$this->view->page_title = 'Transaction Info';
		$this->view->render();
	}

	function receipt($id){
		$this->model('pharmacy');
		$this->view('Pharmacy'.DIRECTORY_SEPARATOR.'order-receipt',['trans'=>$this->model->viewTransactionView($id)]);
		$this->view->page_title = 'Receipt';
		$this->view->render();
	}

}