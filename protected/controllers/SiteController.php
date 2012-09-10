<?php

class SiteController extends Controller
{
	public $attempts = 2; // allowed 2 attempts
	public $counter;
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CaptchaExtendedAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}
	

	public function filters()
	{
		return array(
			'blockuser + login', //check to ensure valid project context
		);
	}


	public function filterBlockuser($filterChain)
	{
		/*$model=new LoginForm;
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			$user_id = User::model()->findByAttributes(array('email'=>$model->username));
			$user_id = BlockUserTable::model()->findByAttributes(array('user_id'=>$user_id->id));
		}
		if(isset($user_id))
			{
			Yii::app()->user->setFlash('block', "Bloked User!");
			$this->redirect('login');
			}
		else
			$filterChain->run();*/

		$model=new LoginForm;
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			$user_id = User::model()->findByAttributes(array('user_organization_email_id'=>$model->username));
			if(isset($user_id))
			{
				$block_user_id = BlockUserTable::model()->findByAttributes(array('user_table_user_id'=>$user_id->user_id));
		
				if(isset($block_user_id))
				{
				Yii::app()->user->setFlash('block', "Sorry You are blocked User!");
				$this->redirect(array('site/login'));
				return false;		
				}
			}
		}
			$filterChain->run();
	}
	

	public function actionSend_sms()
	{
		if(Yii::app()->user->isGuest)
			  Yii::app()->user->loginRequired();

		$sms = new Sendsms;

		if(isset($_POST['Sendsms']))
		{
			$sms->attributes=$_POST['Sendsms'];
		
			$c = curl_init();
			curl_setopt($c, CURLOPT_URL, 'http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?');
			curl_setopt($c, CURLOPT_POST, true);
			curl_setopt($c, CURLOPT_POSTFIELDS, 'username=barinder&password=988882665&sendername=DDIT&mobileno='.$sms->phone_no.'&message='.$sms->message);
			curl_setopt($c, CURLOPT_SSL_VERIFYPEER, false);
			if(curl_exec($c))
			echo 'sent';
			else
			var_dump(curl_error($c));
			curl_close ($c);

		}
		
		$this->render('send_sms',array('model'=>$sms));
	}

	public function actionSelect_company()
	{
		$login=new LoginUser;
		$this->layout='select_company_main';
		if(Yii::app()->user->isGuest)
			  Yii::app()->user->loginRequired();

		$model = new SelectCompany;
		$company_list = assignCompanyUserTable::model()->findAll(array('condition'=>'assign_user_id=:x', 'params'=>array(':x'=>Yii::app()->user->id)));

		foreach($company_list as $list1)
		{
			$company[] = Organization::model()->findByPk($list1->assign_org_id);
//			$listdata[] =  array('id'=>$company->organization_id,'name'=>$company->organization_name);  /// CREATE ARRAY WITH TWO KEY INDEX (ORG_ID,ORG_NAME)
			
		}

		if(isset($_POST['SelectCompany']))
		{
			$model->attributes=$_POST['SelectCompany'];

			if(isset($_POST['select_org']) && $model->organization_name != null)
			{
				Yii::app()->user->setState('org_id',$model->organization_name);
				
				$login->user_id=Yii::app()->user->id;
				$login->status=1;
				$login->log_in_time=new CDbExpression('NOW()');
				$login->user_ip_address=$_SERVER['REMOTE_ADDR'];
				$login->login_organization_id=Yii::app()->user->getState('org_id');	
			  	$login->save();
				
				$this->redirect(array('/dashboard'));
			}
			else
			{
				Yii::app()->user->setFlash('not-select', "Please selecte any Organization!");
				$this->redirect(array('select_company'));
			}

		}
		else
		{
		$this->render('select_company',array('model'=>$model,'company'=>$company,
			));
		}
	}	

	public function actionTest()
	{
		$this->render('test');
	}
	
		
	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		if(Yii::app()->user->isGuest)
		{
			  Yii::app()->user->loginRequired();

		}
		else
		{
			$this->redirect(array('/dashboard'));										
		}
		
		
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
	    if($error=Yii::app()->errorHandler->error)
	    {
	    	if(Yii::app()->request->isAjaxRequest)
	    		echo $error['message'];
	    	else
	        	$this->render('error', $error);
	    }
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
                
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$headers="From: {$model->email}\r\nReply-To: {$model->email}";
				mail(Yii::app()->params['adminEmail'],$model->subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */

	public function actionLogin()
	{	
		

		if(Yii::app()->user->isGuest)
		{

			//$model=new LoginForm;
			$login=new LoginUser;
			$model = $this->captchaRequired()? new LoginForm('captchaRequired') : new LoginForm;
				
			// if it is ajax validation request
			if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
			{
				echo CActiveForm::validate($model);
				Yii::app()->end();
			}

			// collect user input data
			if(isset($_POST['LoginForm']))
			{
				
				$model->attributes=$_POST['LoginForm'];
				//$login->attributes=$_POST['LoginUser'];
				// validate user input and redirect to the previous page if valid
				if($model->validate() && $model->login())
				{
					
				$ass_com = assignCompanyUserTable::model()->count(array('condition'=>'assign_user_id=:x', 'params'=>array(':x'=>Yii::app()->user->id)));
					if($ass_com >= 1)
					{
											
						if($ass_com == 1)
						{
							
							$c_id[] = assignCompanyUserTable::model()->findByAttributes(array('assign_user_id'=>Yii::app()->user->id));
							$data = CHtml::listData($c_id,'assign_user_id', 'assign_org_id');
							foreach($data as $id)
							Yii::app()->user->setState('org_id',$id);
							/* insert data in login user*/							
							$login->user_id=Yii::app()->user->id;

			
							$loginuser = $login->user_id;
							$emplogin = EmployeeTransaction::model()->findByAttributes(array('employee_transaction_user_id'=>$loginuser));
							$studlogin = StudentTransaction::model()->findByAttributes(array('student_transaction_user_id'=>$loginuser));
							if($studlogin)
							{
								Yii::app()->user->setState('stud_id',$studlogin->student_transaction_student_id);
							}
							if($emplogin)
							{
								Yii::app()->user->setState('emp_id',$emplogin->employee_transaction_employee_id);
							}	

							$login->status=1;
							$login->log_in_time=new CDbExpression('NOW()');
							$login->user_ip_address=$_SERVER['REMOTE_ADDR'];
							$login->login_organization_id=Yii::app()->user->getState('org_id');
							
							$login->save();
							$this->redirect(array('/dashboard'));	
							//Yii::app()->session->destroy();
													
						}
							/* insert data in login user*/
							$login->user_id=Yii::app()->user->id;
							$loginuser = $login->user_id;
							$emplogin = EmployeeTransaction::model()->findByAttributes(array('employee_transaction_user_id'=>$loginuser));
							$studlogin = StudentTransaction::model()->findByAttributes(array('student_transaction_user_id'=>$loginuser));
							if($studlogin)
							{
								Yii::app()->user->setState('stud_id',$studlogin->student_transaction_student_id);
							}
							if($emplogin)
							{
								Yii::app()->user->setState('emp_id',$emplogin->employee_transaction_employee_id);
							}	
						$this->redirect(array('select_company'));
					}
					else
					{
						
													
						$login->user_id=Yii::app()->user->id;						
					        $loginuser = $login->user_id;
						$emplogin = EmployeeTransaction::model()->findByAttributes(array('employee_transaction_user_id'=>$loginuser));
						$studlogin = StudentTransaction::model()->findByAttributes(array('student_transaction_user_id'=>$loginuser));
						if($studlogin)
						{
							Yii::app()->user->setState('stud_id',$studlogin->student_transaction_student_id);
						}
						if($emplogin)
						{
							Yii::app()->user->setState('emp_id',$emplogin->employee_transaction_employee_id);
						}	
						$login->status=1;
						$login->log_in_time=new CDbExpression('NOW()');
						$login->user_ip_address=$_SERVER['REMOTE_ADDR'];
			//$login->login_oraganization_id=Yii::app()->user->getState('org_id');						
			
						$login->save();

						$this->redirect(array('/dashboard'));
					}

				}
				else
				{
					 $this->counter=Yii::app()->session->itemAt('captchaRequired') + 1;
					 Yii::app()->session->add('captchaRequired',$this->counter);
					

				}

			}
					
			// display the login form
					
			
			$this->render('login',array('model'=>$model));

		}
		else
		{		
			$this->redirect(array('/dashboard'));
		}
		
	}
	public function captchaRequired()
        {           
               return Yii::app()->session->itemAt('captchaRequired') >= $this->attempts;
		//return ($this->counter >= $this->attempts);
        }
/*
	public function actionLogin()
	{	
		if(Yii::app()->user->isGuest)
		{

			$model=new LoginForm;

			// if it is ajax validation request
			if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
			{
				echo CActiveForm::validate($model);
				Yii::app()->end();
			}

			// collect user input data
			if(isset($_POST['LoginForm']))
			{
				$model->attributes=$_POST['LoginForm'];
				// validate user input and redirect to the previous page if valid
				if($model->validate() && $model->login())
				{
					$ass_com = assignCompanyUserTable::model()->findByAttributes(array('assign_user_id'=>Yii::app()->user->id));
					
					if(isset($ass_com))
					{
					$this->redirect(array('select_company'));
					}
					else
					{
					$this->render('index');
					}
				}

			}

			// display the login form

			$this->render('login',array('model'=>$model));
		}
		else
		{
			$this->render('index');
		}
		
	}
*/
	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		//$login=new LoginUser;
		
		//$login->status=0;
		//$login->log_out_time=new CDbExpression('NOW()');
		//$login->save();
		/*$update = Yii::app()->db->createCommand()
			    ->update('login_user')
			    ->set('status=0 and log_out_time=now()')
			    ->where('stud.student_transaction_id=:id', array(':id'=>$result))
			    ->queryRow();*/
		if(isset(Yii::app()->user->id))
		LoginUser::model()->updateAll(array( 'status' => 0, 'log_out_time'=> new CDbExpression('NOW()')),'user_id='.Yii::app()->user->id.' AND status = 1');	
		//Yii::app()->session->destroy();
		Yii::app()->user->logout();		
		$this->redirect(Yii::app()->homeUrl);

	}


}
