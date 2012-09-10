<?php

class FeesPaymentTransactionController extends RController
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
				'actions'=>array('index','view','payfeescash','payfeescheque','update_payfeescash','update_payfeescheque'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update','update_payfeescash','update_payfeescheque'),
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

	public function actionPrint_cash_receipt()
	{
		$this->layout='receipt_layout';
		$fees_payment = FeesPaymentTransaction::model()->findByPk($_REQUEST['id']);
		$model = StudentTransaction::model()->findByPk($fees_payment->fees_student_id);
		$stud_id = $model->student_transaction_student_id;
		$stud_model = StudentInfo::model()->findByPk($model->student_transaction_student_id);
		$acd_term = AcademicTermPeriod::model()->findByPk($model->student_academic_term_period_tran_id);
		$sem_name = AcademicTerm::model()->findByPk($model->student_academic_term_name_id);

		$branch = Branch::model()->findByPk($model->student_transaction_branch_id);	
		$cash_amt = FeesPaymentCash::model()->findByPk($fees_payment->fees_payment_cash_cheque_id);

		$this->render('print_cash_receipt',array('model'=>$model,'stud_model'=>$stud_model,'acd_term'=>$acd_term,'branch'=>$branch,'fees_payment'=>$fees_payment,'cash_amt'=>$cash_amt,'sem_name'=>$sem_name));
	}

	public function actionPrint_cheque_receipt()
	{
		$this->layout='receipt_layout';
		$fees_payment = FeesPaymentTransaction::model()->findByPk($_REQUEST['id']);
		$model = StudentTransaction::model()->findByPk($fees_payment->fees_student_id);
		$stud_id = $model->student_transaction_student_id;
		$stud_model = StudentInfo::model()->findByPk($model->student_transaction_student_id);
		$acd_term = AcademicTermPeriod::model()->findByPk($model->student_academic_term_period_tran_id);
		$sem_name = AcademicTerm::model()->findByPk($model->student_academic_term_name_id);

		$branch = Branch::model()->findByPk($model->student_transaction_branch_id);	
		$cheque_amt = FeesPaymentCheque::model()->findByPk($fees_payment->fees_payment_cash_cheque_id);

		$this->render('print_cheque_receipt',array('model'=>$model,'stud_model'=>$stud_model,'acd_term'=>$acd_term,'branch'=>$branch,'fees_payment'=>$fees_payment,'cheque_amt'=>$cheque_amt,'sem_name'=>$sem_name));
	}



	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	public function actionTotal()
	{
		$model=new FeesPaymentTransaction;
		
		$this->render('total',array(
			'model'=>$model,
		));
	}

	public function actionReceipt_generate_print()
	{
		$model=new FeesPaymentTransaction;
		
		if(isset($_POST['FeesPaymentTransaction']['receipt_start_from']) && isset( $_POST['FeesPaymentTransaction']['receipt_end_to']))
		{
						
			$this->layout='receipt_layout';	

			$this->render('receipt_generate_view',array('start'=>$_POST['FeesPaymentTransaction']['receipt_start_from'],'end'=>$_POST['FeesPaymentTransaction']['receipt_end_to']));
			
		}
		
		else
		{
			
			$this->render('receipt_generate_print',array(
				'model'=>$model,
			));
		}
	}
	public function actiondate_report()
	{
		$model=new FeesPaymentTransaction;
		

		$model->scenario = 'date_report';
		
		
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		
		if(!empty($_POST['FeesPaymentTransaction']['start_date']) && !empty( $_POST['FeesPaymentTransaction']['end_date']))
		{
			$model->attributes=$_POST['FeesPaymentTransaction'];
			$start = $_POST['FeesPaymentTransaction']['start_date'];
			$end = $_POST['FeesPaymentTransaction']['end_date'];
			
			
			
			if($start > $end)
			{
				Yii::app()->user->setFlash('error', "start date must be less then end date");
				$this->redirect(array('date_report'));
			}
			$var1 = FeesPaymentTransaction::model()->
			findAllBySql("select DISTINCT fees_payment_method_id, fees_payment_cash_cheque_id,fees_student_id,fees_received_date from fees_payment_transaction where fees_received_date >='".$start."' AND fees_received_date <='".$end."'");
			/*
			$amount = FeesPaymentTransaction::model()->
			findAllBySql("select fees_payment_method_id, fees_payment_cash_cheque_id from fees_payment_transaction where fees_received_date >='".$start."' AND fees_received_date <='".$end."'");
			
			foreach($amount as $list)
			{
				$amt1 =$list['fees_payment_method_id'];
				
				if($list['fees_payment_method_id'] == '1')
				{
					$cash_id = $list['fees_payment_cash_cheque_id'];
					$amunt = FeesPaymentCash::model()->findByPk($cash_id)->fees_payment_cash_amount; 
					echo $amunt."</br>";
				}
				else
				{
					$cheque_id = $list['fees_payment_cash_cheque_id'];
					$amunt1 = FeesPaymentCheque::model()->findByPk($cheque_id)->fees_payment_cheque_amount; 
					echo $amunt1."</br>";
				}
			}
			*/
			
			$this->render('date_report_generate_view',array('start'=>$_POST['FeesPaymentTransaction']['start_date'],'end'=>$_POST['FeesPaymentTransaction']['end_date'],'var1'=>$var1,));	
						
		}
		else
		{
		$this->render('date_report_create',array(
			'model'=>$model,
		));
		}
	}


	public function actionBranch_receipt_generate_print()
	{
		$model=new FeesPaymentTransaction;
		
		if(!empty($_POST['FeesPaymentTransaction']['fees_acdm_period']) && !empty( $_POST['FeesPaymentTransaction']['fees_branch']) && !empty($_POST['FeesPaymentTransaction']['fees_division']))
		{
			
			$this->layout='receipt_layout';	

			$this->render('branch_receipt_generate_view',array('acdm_period'=>$_POST['FeesPaymentTransaction']['fees_acdm_period'],'acdm_name'=>$_POST['FeesPaymentTransaction']['fees_acdm_name'],'branch'=>$_POST['FeesPaymentTransaction']['fees_branch'],'division'=>$_POST['FeesPaymentTransaction']['fees_division']));
		}
		
		else
		{
			$flag = 1;
			$this->render('branch_receipt_generate_form_view',array(
				'model'=>$model,'flag'=>$flag,
			));
			
		}		
	}


	public function actionPaid()
	{
		$model=new FeesPaymentTransaction;
		
		$this->render('paid_student',array(
			'model'=>$model,
		));
	}

	public function actionUnPaid()
	{
		$model=new FeesPaymentTransaction;
		
		$this->render('unpaid_student',array(
			'model'=>$model,
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new FeesPaymentTransaction;
		$FeesMasterDetails=new FeesMaster;

		$result = $_REQUEST['id'];
		$fees_stru = Yii::app()->db->createCommand()
			    ->select('fees.fees_master_id , fees.fees_master_name , fees.fees_branch_id , stud.student_transaction_branch_id , stud.student_transaction_organization_id , fees.fees_organization_id , stud.student_transaction_quota_id , fees.fees_quota_id ,stud.student_academic_term_period_tran_id , fees.fees_academic_term_id, fees.fees_academic_term_name_id, fees.fees_master_total')
			    ->from('student_transaction stud')
			    ->join('fees_master fees','stud.student_transaction_branch_id = fees.fees_branch_id
		AND stud.student_academic_term_period_tran_id = fees.fees_academic_term_id
		AND stud.student_academic_term_name_id = fees.fees_academic_term_name_id 	
		AND stud.student_transaction_organization_id = fees.fees_organization_id
		AND stud.student_transaction_quota_id = fees.fees_quota_id')
			    ->where('stud.student_transaction_id=:id', array(':id'=>$result))
			    ->queryRow();

		if(!$fees_stru)
		{
			$ourscript = "alert('No fees available for this critaria.. Please create fees with this branch, academic year and semester of student. 	');";
    			Yii::app()->clientScript->registerScript('helloscript',$ourscript,CClientScript::POS_READY);
			
			$this->render('error_page');

			

			
		}
		else
		{

			$model->fees_payment_master_id = $fees_stru['fees_master_id'];
			//echo $fees_stru['fees_organization_id'];
			//exit;
			$org = Organization::model()->findByPk($fees_stru['fees_organization_id']);
	//		$org = $org->organization_name;
			$quota = Quota::model()->findByPk($fees_stru['fees_quota_id']);
	//		$quota = $quota->quota_name;
			$branch = Branch::model()->findByPk($fees_stru['fees_branch_id']);
	//		$branch = $branch->branch_name;
			$acmd = AcademicTermPeriod::model()->findByPk($fees_stru['fees_academic_term_id']);
	//		$acmd = $acmd->academic_terms_period_name;
			$acmd_name = AcademicTerm::model()->findByPk($fees_stru['fees_academic_term_name_id']);


			$FeesMasterDetails->fees_master_name = $fees_stru['fees_master_name'];
			$FeesMasterDetails->fees_organization_id = $org->organization_name;
			$FeesMasterDetails->fees_quota_id = $quota->quota_name;
			$FeesMasterDetails->fees_branch_id = $branch->branch_name;
			$FeesMasterDetails->fees_academic_term_id = $acmd->academic_term_period;
			$FeesMasterDetails->fees_academic_term_name_id = $acmd_name->academic_term_name;
			$FeesMasterDetails->fees_master_total = $fees_stru['fees_master_total'];

			// Uncomment the following line if AJAX validation is needed
			 $this->performAjaxValidation($model);

			$model->fees_payment_master_id = $fees_stru['fees_master_id'];

	/*
			if(isset($_POST['FeesPaymentTransaction']))
			{
				$model->attributes=$_POST['FeesPaymentTransaction'];

				if($model->save())
					$this->redirect(array('view','id'=>$model->fees_payment_transaction_id));
			}
	*/

			//$paid_fees_details = FeesPaymentTransaction::model()->findByAttributes(array('fees_student_id'=>$result));
		

			$cash_model=new FeesPaymentTransaction('cashsearch');
			$cash_model->unsetAttributes();  // clear any default values
			if(isset($_GET['FeesPaymentTransaction']))
				$cash_model->attributes=$_GET['FeesPaymentTransaction'];

			$cheque_model=new FeesPaymentTransaction('chequesearch');
			$cheque_model->unsetAttributes();  // clear any default values
			if(isset($_GET['FeesPaymentTransaction']))
				$cheque_model->attributes=$_GET['FeesPaymentTransaction'];


			$this->render('create',array(
				'model'=>$model,'FeesMasterDetails'=>$FeesMasterDetails,'cash_model'=>$cash_model,'cheque_model'=>$cheque_model,
			));			
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

		if(isset($_POST['FeesPaymentTransaction']))
		{
			$model->attributes=$_POST['FeesPaymentTransaction'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->fees_payment_transaction_id));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	public function actionPayfeescash()
	{

		$model=new FeesPaymentTransaction;
		$pay_cash=new FeesPaymentCash;
		$pay_trans=new FeesPaymentTransaction;
		$receipt = new FeesReceipt;
	
		if(isset($_POST['FeesPaymentTransaction']))
		{
			Yii::app()->user->setState('student_id',$_POST['FeesPaymentTransaction']['student_id']);	
			Yii::app()->user->setState('fees_master_id',$_POST['FeesPaymentTransaction']['fees_master_id']);	

		}		

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation_cash(array($model,$pay_cash));

		if(isset($_POST['FeesPaymentCash']))
		{
			$pay_cash->attributes = $_POST['FeesPaymentCash'];

			if($pay_cash->save())
			{			
				$receipt->save();
				$pay_trans->fees_payment_master_id=Yii::app()->user->getState('fees_master_id');
				$pay_trans->fees_payment_method_id=1;
				$pay_trans->fees_payment_cash_cheque_id=$pay_cash->fees_payment_cash_id;
				$pay_trans->fees_receipt_id=$receipt->fees_receipt_id;
				$pay_trans->fees_payment=1;
				$pay_trans->fees_received_user_id=Yii::app()->user->id;
				$pay_trans->fees_full_part_payment_id=1;
				$pay_trans->fees_student_id=Yii::app()->user->getState('student_id');
				$pay_trans->fees_payment_transaction_organization_id = Yii::app()->user->getState('org_id');
				$pay_trans->fees_received_date= new CDbExpression('NOW()');
				 
				
				
				//$pay_trans->save();		

				$stud_trans = StudentTransaction::model()->findByAttributes(array('student_transaction_id'=>Yii::app()->user->getState('student_id')));

				$stud_add_id = $stud_trans->student_transaction_student_address_id;
				$stud_info_id = $stud_trans->student_transaction_student_id;
				$pay_trans->fees_academic_period_id = $stud_trans->student_academic_term_period_tran_id;

				$pay_trans->fees_academic_term_id = $stud_trans->student_academic_term_name_id;
				
				$pay_trans->save();		
				$stud_add_mobile = StudentAddress::model()->findByPk($stud_add_id)->student_address_mobile;
				$stud_email_id = StudentInfo::model()->findByPk($stud_info_id)->student_email_id_1;


				// SEND SMS TO LOGIN USER WITH RANDOM NUMBER
				/*
				$c = curl_init();
				curl_setopt($c, CURLOPT_URL, 'http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?');
				curl_setopt($c, CURLOPT_POST, true);
				curl_setopt($c, CURLOPT_POSTFIELDS,'username=barinder&password=988882665&sendername=DDIT&mobileno='.$stud_add_mobile.'&message=Succesfully recived your fees of amount: '.$pay_cash->fees_payment_cash_amount);
				curl_setopt($c, CURLOPT_SSL_VERIFYPEER, false);
				if(curl_exec($c))
					echo 'sent';
				else
					var_dump(curl_error($c));
				curl_close ($c);
				

				// SEND AN EMAIL TO STUDENT AT THEIR PERSONAL EMAIL ID 1....

				
				require_once "Mail.php";
				 
				 $from = "<rudratestmail@gmail.com>";
				 $to = $stud_email_id;
				 $subject = "Notification for paid Fees";
				 $body = "Dear Student, Your fees recieved succesfully of amount :".$pay_cash->fees_payment_cash_amount;
				 
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
				*/
				
				$this->redirect(array('create','id'=>$pay_trans->fees_student_id));

			}

		}

		$this->render('payfeescash',array(
			'model'=>$model,'pay_cash'=>$pay_cash,
		));
	}

	public function actionUpdate_payfeescash($id)
	{
		$model=new FeesPaymentTransaction;
		$pay_cash=FeesPaymentCash::model()->findByPk($id);
		$result = $_REQUEST['id'];

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation_cash(array($model,$pay_cash));


		if(isset($_POST['FeesPaymentCash']))
		{
			$pay_cash->attributes=$_POST['FeesPaymentCash'];
			if($pay_cash->save())
				$this->redirect(array('create','id'=>Yii::app()->user->getState('student_id')));
		}

		$this->render('update_payfeescash',array(
			'model'=>$model,'pay_cash'=>$pay_cash,
		));
	}


	public function actionPayfeescheque()
	{

		$model=new FeesPaymentTransaction;
		$pay_cheque=new FeesPaymentCheque;
		$pay_trans=new FeesPaymentTransaction;
		$receipt = new FeesReceipt;
	
		if(isset($_POST['FeesPaymentTransaction']))
		{
			Yii::app()->user->setState('student_id',$_POST['FeesPaymentTransaction']['student_id']);	
			Yii::app()->user->setState('fees_master_id',$_POST['FeesPaymentTransaction']['fees_master_id']);	

		}		

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation_cheque(array($model,$pay_cheque));

		if(isset($_POST['FeesPaymentCheque']))
		{
			$pay_cheque->attributes = $_POST['FeesPaymentCheque'];
			$pay_cheque->fees_payment_cheque_organization_id = Yii::app()->user->getState('org_id');

			if($pay_cheque->save())
			{			
				$receipt->save();
				$pay_trans->fees_payment_master_id=Yii::app()->user->getState('fees_master_id');
				$pay_trans->fees_payment_method_id=2;
				$pay_trans->fees_payment_cash_cheque_id=$pay_cheque->fees_payment_cheque_id;
				$pay_trans->fees_receipt_id=$receipt->fees_receipt_id;
				$pay_trans->fees_payment=1;
				$pay_trans->fees_received_user_id=Yii::app()->user->id;
				$pay_trans->fees_full_part_payment_id=1;
				$pay_trans->fees_student_id=Yii::app()->user->getState('student_id');
				$pay_trans->fees_payment_transaction_organization_id = Yii::app()->user->getState('org_id');
				$pay_trans->fees_received_date= new CDbExpression('NOW()');

				

				$stud_trans = StudentTransaction::model()->findByAttributes(array('student_transaction_id'=>Yii::app()->user->getState('student_id')));

				$pay_trans->fees_academic_period_id=$stud_trans->student_academic_term_period_tran_id;

				$pay_trans->fees_academic_term_id=$stud_trans->	student_academic_term_name_id;	
				$pay_trans->save();	
				$stud_add_id = $stud_trans->student_transaction_student_address_id;
				$stud_info_id = $stud_trans->student_transaction_student_id;
				
				$stud_add_mobile = StudentAddress::model()->findByPk($stud_add_id)->student_address_mobile;
				$stud_email_id = StudentInfo::model()->findByPk($stud_info_id)->student_email_id_1;


				// SEND SMS TO LOGIN USER WITH RANDOM NUMBER
				/*

				$c = curl_init();
				curl_setopt($c, CURLOPT_URL, 'http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?');
				curl_setopt($c, CURLOPT_POST, true);
				curl_setopt($c, CURLOPT_POSTFIELDS,'username=barinder&password=988882665&sendername=DDIT&mobileno='.$stud_add_mobile.'&message=Succesfully recived your fees of amount: '.$pay_cheque->fees_payment_cheque_amount);
				curl_setopt($c, CURLOPT_SSL_VERIFYPEER, false);
				if(curl_exec($c))
					echo 'sent';
				else
					var_dump(curl_error($c));
				curl_close ($c);
				*/

				// SEND AN EMAIL TO STUDENT AT THEIR PERSONAL EMAIL ID 1....

				/*
				require_once "Mail.php";
				 
				 $from = "<rudratestmail@gmail.com>";
				 $to = $stud_email_id;
				 $subject = "Notification for paid Fees";
				 $body = "Dear Student, Your fees recieved succesfully of amount :".$pay_cheque->fees_payment_cheque_amount;
				 
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

				*/
				$this->redirect(array('create','id'=>$pay_trans->fees_student_id));

			}

		}

		$this->render('payfeescheque',array(
			'model'=>$model,'pay_cheque'=>$pay_cheque,
		));
	}
	
	public function actionUpdate_payfeescheque($id)
	{
		$model=new FeesPaymentTransaction;
		$pay_cheque=FeesPaymentCheque::model()->findByPk($id);
		$result = $_REQUEST['id'];

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation_cheque(array($model,$pay_cheque));


		if(isset($_POST['FeesPaymentCheque']))
		{
			$pay_cheque->attributes=$_POST['FeesPaymentCheque'];
			if($pay_cheque->save())
				$this->redirect(array('create','id'=>Yii::app()->user->getState('student_id')));
		}

		$this->render('update_payfeescheque',array(
			'model'=>$model,'pay_cheque'=>$pay_cheque,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */



	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		//if(Yii::app()->request->isPostRequest)
		//{
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			//if(!isset($_GET['ajax']))
				$this->redirect(array('create','id'=>Yii::app()->user->getState('student_id')));
		//}
		//else
		//	throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
/*		$dataProvider=new CActiveDataProvider('FeesPaymentTransaction');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/
		$model=new FeesPaymentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeesPaymentTransaction']))
			$model->attributes=$_GET['FeesPaymentTransaction'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new FeesPaymentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeesPaymentTransaction']))
			$model->attributes=$_GET['FeesPaymentTransaction'];

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
		$model=FeesPaymentTransaction::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='fees-payment-transaction-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}

	protected function performAjaxValidation_cash($models)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='fees-payment-cash-form')
		{
			echo CActiveForm::validate($models);
			Yii::app()->end();
		}
	}
	
	protected function performAjaxValidation_cheque($models)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='fees-payment-cheque-form')
		{
			echo CActiveForm::validate($models);
			Yii::app()->end();
		}
	}
	public function actionMis_report()
	{
		$model=new FeesPaymentTransaction;
		$row1 = Yii::app()->db->createCommand()
			->selectDistinct('fees_branch_id,fees_academic_term_id,fees_academic_term_name_id')
			->from('fees_master')
			->queryAll();
	if(!empty($row1))
	{

		foreach($row1 as $list)
		{

			if(!empty($list))
			{
				
				$branch = $list['fees_branch_id'];
				$term_period = $list['fees_academic_term_id'];
				$term_name = $list['fees_academic_term_name_id'];
				
							
				$student_data = StudentTransaction::model()->findAll(
						    'student_transaction_branch_id ='.$list['fees_branch_id'].' AND
							  student_academic_term_period_tran_id ='.$list['fees_academic_term_id'].' AND
							  student_academic_term_name_id ='.$list['fees_academic_term_name_id']

						);

				$fee_data = FeesMaster::model()->findAll(
						  	  'fees_branch_id ='.$list['fees_branch_id'].' AND
							  fees_academic_term_id ='.$list['fees_academic_term_id'].' AND
							  fees_academic_term_name_id ='.$list['fees_academic_term_name_id']	  

						);
				
				$count = count($fee_data);
				
				
					$total_cheque_amt = 0;
					$total_cash_amt = 0;
					
					foreach($fee_data as $fees_id)			
					{
						$my_fees_id = $fees_id['fees_master_id'];
						$fees_master_id = FeesPaymentTransaction::model()->findAllByAttributes(array('fees_payment_master_id'=>$my_fees_id));
						
						$var = FeesMaster::model()->findBySql("select fees_master_total from fees_master where fees_master_id =".$my_fees_id);
						
						$total1 = $var['fees_master_total'];
													
						foreach($fees_master_id as $cash_cheque_data) {
							$payment_method = $cash_cheque_data->fees_payment_method_id;
							
							if($payment_method == 2) {
								
								$cheque_amt = FeesPaymentCheque::model()->findByPk($cash_cheque_data->fees_payment_cash_cheque_id);	
								$total_cheque_amt = $total_cheque_amt + $cheque_amt->fees_payment_cheque_amount;
							}
							else {
								$cash_amt = FeesPaymentCash::model()->findByPk($cash_cheque_data->fees_payment_cash_cheque_id);	
								$total_cash_amt = $total_cash_amt + $cash_amt->fees_payment_cash_amount;
							}
						}
					}
					$totalamount = $total_cheque_amt + $total_cash_amt;	
					$mytotalamount[] = $totalamount;			
				
				$paid=0;
				$total=0;
				$unpaid=0;
				foreach($student_data as $stud_id)
				{
					$total++;
					if($fees_pay=FeesPaymentTransaction::model()->findAllByAttributes(array('fees_student_id'=> $stud_id->student_transaction_id)))
					{
						$paid++;
					}
				}

			
			$mytotal[] = $total;
			$mypaid[] = $paid;
			$unpaid=$total - $paid;
			$myunpaid[] = $unpaid;
			$totalamt = $unpaid * $total1;
			$mytotalamt[] = $totalamt;
			}
			
		
		}
				
				$this->render('create_report',array(
				'model'=>$model,'mytotal'=>$mytotal,'mytotalamt'=>$mytotalamt,'mytotalamount'=>$mytotalamount,'mypaid'=>$mypaid,'myunpaid'=>$myunpaid,'fees_model'=>$row1,
			)); 
	}
	else {
		$this->render('error_msg'); 
	}
    }

	public function actiongetItemName()
        {
            $data=  AcademicTerm::model()->findAll('academic_term_period_id=:academic_term_period_id',
		 array(':academic_term_period_id'=>(int) $_REQUEST['FeesPaymentTransaction']['fees_acdm_period']));
                  
            $data=CHtml::listData($data,'academic_term_id','academic_term_name');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }

	public function actiongetItemName1()
        {
            //$data=  Division::model()->findAll('branch_id=:branch_id',
		// array(':branch_id'=>(int) $_REQUEST['FeesPaymentTransaction']['fees_branch'],));
		$org_id=Yii::app()->user->getState('org_id');

		$data=Division::model()->findAll(array('condition'=>'branch_id='.(int) $_REQUEST['FeesPaymentTransaction']['fees_branch'].' and academic_name_id='.$_REQUEST['FeesPaymentTransaction']['fees_acdm_name'].' and division_organization_id='.$org_id));
                  	
            $data=CHtml::listData($data,'division_id','division_code');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }

}
