<?php 
	App::uses('AppModel', 'Model');
	
	class Contact extends AppModel{
		
		/*Khai bao su dung bang*/
		public $useTable= "contact";
		
		/*Khai bao skhoa chinh cua bang*/
		public $primaryKey = "contact_id";
		
		public $validate = array(
				'name' => array(
						'rule1' => array(
								'rule' => 'notEmpty',
								'message' => 'Please enter your name.'
						),
						'rule2' => array(
								'rule' => array('maxLength',16),
								'message' => 'Username must be lasting less than 16 characters.'
						)
				),
				'phone' => array(
						'rule1' => array(
								'rule' => 'notEmpty',
								'message' => 'Please enter your phone.'
						),
						'rule2' => array(
								'rule' => 'numeric',
        						'message' => 'Please enter only numbers',
						)
				),
				'email' => array(
						'rule1' => array(
							'rule' => 'notEmpty',
							'message' => 'Please enter your email.'
						),
						'rule2' => array(
							'rule' => array('email'),
							'message' => 'Email not true'
				),
				'subject' => array(
						'rule' => 'notEmpty',
				),
			)
		);
		
	}
