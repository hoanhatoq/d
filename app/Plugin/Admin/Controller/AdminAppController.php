<?php
//App::uses('Controller', 'Controller');

class AdminAppController extends AppController {
	
	/**	 
	 * Danh sách các components được sử dụng
	 */
	public $components = array(
		'DebugKit.Toolbar', 
		'Session', 
		'Cookie',
		'Auth' => array(
    			'loginAction' => array('controller' => 'admin','action' => 'login'),
				'loginRedirect' => array('controller' => 'index', 'action' => 'index'),
				'logoutRedirect' => array('controller' => 'contact', 'action' => 'index'),
				'authenticate' => array(
						'Form' => array(
								'userModel' => 'Admin',
								'passwordHasher' => 'Blowfish'
						)
				),
				'unauthorizedRedirect' => array('controller' => 'index', 'action' => 'index')
    		)
	);

	/**
	 * Ghi lại cookie khi chọn keep login 
	 * 
	 */
	public function beforeFilter() {   
    	$this->Cookie->httpOnly = true;
    	if (!$this->Auth->loggedIn() && $this->Cookie->read('rememberMe')) {
        	$cookie = $this->Cookie->read('rememberMe');
 
            $this->loadModel('Admin'); 
            $user = $this->Admin->find('first', array(
                'conditions' => array(
                    'Admin.username' => $cookie['username'],
                    'Admin.password' => $cookie['password']
                )
         	));
     
			if ($user && !$this->Auth->login($user['Admin'])) {
			    $this->redirect('/admin/logout');
			}
     	}
	}
}
