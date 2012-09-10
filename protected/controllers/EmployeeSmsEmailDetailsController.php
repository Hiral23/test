<?php

class EmployeeSmsEmailDetailsController extends RController
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'rights', // perform access control for CRUD operations
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view','background','my_create','background_msg'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('@'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		//$this->actionBackground();
		$model=new EmployeeSmsEmailDetails;
		$emp_trans=new EmployeeTransaction;

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['EmployeeSmsEmailDetails']))
		{
			$model->attributes=$_POST['EmployeeSmsEmailDetails'];
			$model->employee_sms_email_organization_id = Yii::app()->user->getState('org_id');
			$branch_id=$model->branch_id;
			$shift_id=$model->shift_id;
			$dep_id=$model->department_id;
			$sms_email_status=$model->email_sms_status;

			
			$emp_ids = Yii::app()->db->createCommand()
				 ->select('employee_transaction_id,employee_transaction_employee_id,employee_transaction_branch_id ,employee_transaction_shift_id,employee_transaction_department_id')
						    ->from('employee_transaction')			    			   
						    ->where('employee_transaction_department_id='.$dep_id.' and employee_transaction_shift_id='.$shift_id.' and employee_transaction_branch_id='.$branch_id)
						    ->queryAll();

			$count = count($emp_ids);

			foreach($emp_ids as $emp_info_ids)
				$info_id[] = EmployeeInfo::model()->findByPk($emp_info_ids['employee_transaction_employee_id'])->employee_private_email;
		//	print_r($info_id);
			//exit;

		
		if($count != 0) {
				$this->actionBackground();
				for($i=0;$i<$count;$i++)
				{ 
					$model->setIsNewRecord(true);
					$model->employee_sms_email_id=null;				
					$emp_id = $emp_ids[$i]['employee_transaction_id'];
					$model->employee_id = $emp_id;
					$model->created_by = Yii::app()->user->id;
					$model->creation_date = new CDbExpression('NOW()');
					$model->save();
				}
		//			print_r($info_id);
					//exit;
					//$this->actionBackground($info_id);
					
				
			}
	
			else
			{
					Yii::app()->user->setFlash('no-record', "There is No match Found!");
					$this->render('create',array(
					'model'=>$model,
				));
			}
						
				
		
	}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	public function actionMy_create()
	{
		//$this->actionBackground();
		$model=new EmployeeSmsEmailDetails;
		$emp_trans=new EmployeeTransaction;

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['EmployeeSmsEmailDetails']))
		{
			//print_r($_POST['EmployeeSmsEmailDetails']);
			//exit;
			$model->attributes=$_POST['EmployeeSmsEmailDetails'];
			
			$branch_id=$model->branch_id;
			$shift_id=$model->shift_id;
			$dep_id=$model->department_id;
			$sms_email_status=$model->email_sms_status;
			
			
			$emp_ids = Yii::app()->db->createCommand()
				 ->select('employee_transaction_id,employee_transaction_employee_id,employee_transaction_branch_id ,employee_transaction_shift_id,employee_transaction_department_id')
						    ->from('employee_transaction')			    			   
						    ->where('employee_transaction_department_id='.$dep_id.' and employee_transaction_shift_id='.$shift_id.' and employee_transaction_branch_id='.$branch_id)
						    ->queryAll();

			$count = count($emp_ids);
			
		if($count != 0) {

				for($i=0;$i<$count;$i++)
				{ 
					$model->setIsNewRecord(true);
					$model->employee_sms_email_id=null;				
					$emp_id = $emp_ids[$i]['employee_transaction_id'];
					$model->employee_id = $emp_id;
					$model->created_by = Yii::app()->user->id;
					$model->creation_date = new CDbExpression('NOW()');
					$model->save();
				}

				if($sms_email_status == 2) {
					foreach($emp_ids as $emp_info_ids)
						$info_id[] = EmployeeInfo::model()->findByPk($emp_info_ids['employee_transaction_employee_id'])->employee_private_email;
					$this->actionBackground($info_id,$model->message_email_text);
				}
				else {
					foreach($emp_ids as $emp_info_ids)
						$phone_nos[] = EmployeeInfo::model()->findByPk($emp_info_ids['employee_transaction_employee_id'])->employee_private_mobile;
					
					$this->actionBackground_msg($phone_nos,$model->message_email_text);
				}


			}
	
			else
			{
					Yii::app()->user->setFlash('no-record', "There is No match Found!");
					$this->render('create',array(
					'model'=>$model,
				));
			}

	}

		$this->render('my_create',array(
			'model'=>$model,
		));
	}

	public function actionBackground($info_id,$msg)
	{
		$count = count($info_id);

		Yii::import('application.extensions.runactions.components.ERunActions');
			
		require_once "Mail.php";

		if (ERunActions::runBackground()) {
		
			for($i=0;$i<$count;$i++) {

				 $from = "<rudratestmail@gmail.com>";
				 $to = $info_id[$i];
				 $subject = "Brodcast Mail from Hansaba";
				 $body = $msg;
				 
				 $host = "smtp.gmail.com";
				 $username = "rudratestmail@gmail.com";
				 $password = "rudra741";
				 
				 $headers = array ('From' => $from,
				   'To' => $to,
				   'Subject' => $subject);
				 $smtp = Mail::factory('smtp',
				   array ('host' => $host,
				     'auth' => true,
				     'username' => $username,
				     'password' => $password));
				 
				 $mail = $smtp->send($to, $headers, $body);
				 
				 if (PEAR::isError($mail)) {
				   echo("<p>" . $mail->getMessage() . "</p>");
				  } else {
				   echo("<p>Message successfully sent!</p>");
				  }
			}
		}
		else
		{
			$this->redirect(array('admin'));
		}
	}

	public function actionBackground_msg($phone_nos,$msg)
	{
		$count = count($phone_nos);

		Yii::import('application.extensions.runactions.components.ERunActions');
			
		//require_once "Mail.php";

		if (ERunActions::runBackground()) {
		
			for($i=0;$i<$count;$i++) {

				$c = curl_init();
				curl_setopt($c, CURLOPT_URL, 'http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?');
				curl_setopt($c, CURLOPT_POST, true);
				curl_setopt($c, CURLOPT_POSTFIELDS,'username=barinder&password=988882665&sendername=DDIT&mobileno='.$phone_nos[$i].'&message='.$msg);
				curl_setopt($c, CURLOPT_SSL_VERIFYPEER, false);
				if(curl_exec($c))
					echo 'sent';
				else
					var_dump(curl_error($c));
				curl_close ($c);
			}
		}
		else
		{
			$this->redirect(array('admin'));
		}
	}


	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['EmployeeSmsEmailDetails']))
		{
			$model->attributes=$_POST['EmployeeSmsEmailDetails'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->employee_sms_email_id));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		if(Yii::app()->request->isPostRequest)
		{
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if(!isset($_GET['ajax']))
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
		else
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
	/*	$dataProvider=new CActiveDataProvider('EmployeeSmsEmailDetails');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		)); */

		$model=new EmployeeSmsEmailDetails('search');
		$this->actionBackground();

		//ERunActions::touchUrl($this->createUrl('site/timeConsumingProcess'));

		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['EmployeeSmsEmailDetails']))
			$model->attributes=$_GET['EmployeeSmsEmailDetails'];

		$this->render('admin',array(
			'model'=>$model,
		));

	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new EmployeeSmsEmailDetails('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['EmployeeSmsEmailDetails']))
			$model->attributes=$_GET['EmployeeSmsEmailDetails'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=EmployeeSmsEmailDetails::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='employee-sms-email-details-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
