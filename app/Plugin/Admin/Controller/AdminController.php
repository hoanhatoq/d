<?php
	//App::uses('AdminAppController', 'Controller');
	
	class AdminController extends AdminAppController {
		
		//var $name = "Admin";
		var $helpers = array("Html","Form");
		
		public function Login() {
			$this->layout = 'login';
			if($this->request->is('post'))
			{	
				//pr($this->request->data);
				if($this->Auth->login())
				{
					if($this->request->data['Admin']['rememberMe'] == 1 )
					{
						$cookieTime = "604800";
						$this->request->data['Admin']['password'] = $this->Auth->password($this->request->data['Admin']['password']);
						$this->Cookie->write('rememberMe', $this->request->data['Admin'], true, $cookieTime);
					}
					$this->redirect($this->Auth->redirectUrl());
				}else{
					$error = __('Thông tin tài khoản không đúng.');
	   				$this->set('error', $error);
				}
			}
			
		}	
	}