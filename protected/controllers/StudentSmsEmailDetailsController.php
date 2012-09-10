<?php

class StudentSmsEmailDetailsController extends RController
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
				'actions'=>array('index','view','getItemName','background','my_create','background_msg'),
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
		$model=new StudentSmsEmailDetails;
		$stud_trans=new StudentTransaction;

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['StudentSmsEmailDetails']))
		{
			$model->attributes=$_POST['StudentSmsEmailDetails'];
			
			$branch_id=$model->branch_id;
			$acdm_name_id=$model->academic_name_id;
			$shift_id=$model->shift_id;
			$division_id=$model->division_id;
			$sms_email_status=$model->email_sms_status;
			$model->student_sms_email_organization_id = Yii::app()->user->getState('org_id');
			$stud_ids = Yii::app()->db->createCommand()
					    ->select('student_transaction_id,student_transaction_student_id,student_transaction_branch_id ,student_transaction_shift_id,student_academic_term_period_tran_id, student_academic_term_name_id')
					    ->from('student_transaction')			    			   
					    ->where('student_academic_term_name_id='.$acdm_name_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_branch_id='.$branch_id)
					    ->queryAll();
			
			$count = count($stud_ids);
			for($i=0;$i<$count;$i++)
			{ 
				$model->setIsNewRecord(true);
				$model->student_sms_email_id=null;				
				$stud_id = $stud_ids[$i]['student_transaction_id'];
				$model->student_id = $stud_id;
				$model->created_by = Yii::app()->user->id;
				$model->creation_date = new CDbExpression('NOW()');
				$model->save();
			}
			
				$this->redirect(array('admin'));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	public function actionMy_create()
	{
		$model=new StudentSmsEmailDetails;
		$stud_trans=new StudentTransaction;

		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['StudentSmsEmailDetails']))
		{
			$model->attributes=$_POST['StudentSmsEmailDetails'];
			
			$branch_id=$model->branch_id;
			$acdm_name_id=$model->academic_name_id;
			$shift_id=$model->shift_id;
			$division_id=$model->division_id;
			$sms_email_status=$model->email_sms_status;
			
			$stud_ids = Yii::app()->db->createCommand()
					    ->select('student_transaction_id,student_transaction_student_id,student_transaction_branch_id ,student_transaction_shift_id,student_academic_term_period_tran_id, student_academic_term_name_id')
					    ->from('student_transaction')			    			   
					    ->where('student_academic_term_name_id='.$acdm_name_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_branch_id='.$branch_id)
					    ->queryAll();

			///print_r($stud_ids);
			//exit;
			$count = count($stud_ids);

			for($i=0;$i<$count;$i++)
			{ 
				$model->setIsNewRecord(true);
				$model->student_sms_email_id=null;				
				$stud_id = $stud_ids[$i]['student_transaction_id'];
				$model->student_id = $stud_id;
				$model->created_by = Yii::app()->user->id;
				$model->creation_date = new CDbExpression('NOW()');
				$model->save();
			}

			if($sms_email_status == 2) {
				foreach($stud_ids as $stud_info_ids)
					$info_id[] = StudentInfo::model()->findByPk($stud_info_ids['student_transaction_student_id'])->student_email_id_1;
				$this->actionBackground($info_id,$model->message_email_text);				
				//exit;
					
			}
			else {
				foreach($stud_ids as $stud_info_ids)
					$phone_nos[] = StudentInfo::model()->findByPk($stud_info_ids['student_transaction_student_id'])->student_mobile_no;
					$this->actionBackground_msg($phone_nos,$model->message_email_text);
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
		 $this->performAjaxValidation($model);

		if(isset($_POST['StudentSmsEmailDetails']))
		{
			$model->attributes=$_POST['StudentSmsEmailDetails'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->student_sms_email_id));
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
		/*$dataProvider=new CActiveDataProvider('StudentSmsEmailDetails');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/

		$model=new StudentSmsEmailDetails('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentSmsEmailDetails']))
			$model->attributes=$_GET['StudentSmsEmailDetails'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new StudentSmsEmailDetails('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentSmsEmailDetails']))
			$model->attributes=$_GET['StudentSmsEmailDetails'];

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
		$model=StudentSmsEmailDetails::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='student-sms-email-details-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
	
	public function actiongetItemName()
        {
            $data=  AcademicTerm::model()->findAll('academic_term_period_id=:academic_term_period_id',
		 array(':academic_term_period_id'=>(int) $_REQUEST['StudentSmsEmailDetails']['academic_period_id']));
                  
            $data=CHtml::listData($data,'academic_term_id','academic_term_name');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }
}
