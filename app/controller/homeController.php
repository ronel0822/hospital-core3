<?php

class homeController extends Controller{

	public function index(){
		$this->view('home\index');
		$this->view->page_title = 'Home';
		$this->view->render();
	}

	public function aboutUs(){
		$this->view('home\aboutUs');
		$this->view->page_title = 'About Us';
		$this->view->render();
	}

	public function registration(){
		$this->view('home\registration');
		$this->view->page_title = 'Registration';
		$this->view->render();
	}

	public function signingUp(){
		if(isset($_POST['buyerSubmit'])){
			$_SESSION['message'] = "Registration as Buyer Succes!";
			$_SESSION['status'] = "success";
			$this->view('home\registration');
			$this->view->page_title = 'Registration';
			$this->view->render();
		}else if(isset($_POST['sellerSubmit'])){
			$_SESSION['message'] = "Registration as Seller Succes!";
			$_SESSION['status'] = "success";
			$this->view('home\registration');
			$this->view->page_title = 'Registration';
			$this->view->render();
		}else{
			$this->view('home\registration');
			$this->view->page_title = 'Registration';
			$this->view->render();
		}
	}

}