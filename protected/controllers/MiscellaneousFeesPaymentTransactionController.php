<?php

class MiscellaneousFeesPaymentTransactionController extends RController
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
				'actions'=>array('index','view','madmin'),
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
		$model=new MiscellaneousFeesPaymentTransaction;

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['MiscellaneousFeesPaymentTransaction']))
		{
			$model->attributes=$_POST['MiscellaneousFeesPaymentTransaction'];
			$model->student_fees_id = $_REQUEST['id'];
			$model->miscellaneous_fees_payment_transaction_organization_id = Yii::app()->user->getState('org_id');
			if($model->save())
				$this->redirect(array('view','id'=>$model->miscellaneous_trans_id));
				//$this->redirect(array('miscellaneousFeesPaymentTransaction/madmin'));
		}

		$cash_model=new MiscellaneousFeesPaymentCash('mysearch');
		$cash_model->unsetAttributes();  // clear any default values
		if(isset($_GET['MiscellaneousFeesPaymentCash']))
			$cash_model->attributes=$_GET['MiscellaneousFeesPaymentCash'];

		

		$cheque_model=new MiscellaneousFeesPaymentCheque('mysearch');
		$cheque_model->unsetAttributes();  // clear any default values
		if(isset($_GET['MiscellaneousFeesPaymentCheque']))
			$cheque_model->attributes=$_GET['MiscellaneousFeesPaymentCheque'];

		$this->render('create',array(
			'model'=>$model,'cash_model'=>$cash_model,'cheque_model'=>$cheque_model,
		));



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

		if(isset($_POST['MiscellaneousFeesPaymentTransaction']))
		{
			$model->attributes=$_POST['MiscellaneousFeesPaymentTransaction'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->miscellaneous_trans_id));
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
		/*$dataProvider=new CActiveDataProvider('MiscellaneousFeesPaymentTransaction');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/

		$model=new StudentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentTransaction']))
			$model->attributes=$_GET['StudentTransaction'];

		$this->render('madmin',array(
			'model'=>$model,
		));

	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new MiscellaneousFeesPaymentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['MiscellaneousFeesPaymentTransaction']))
			$model->attributes=$_GET['MiscellaneousFeesPaymentTransaction'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}
	/**
	 * Manages miscellaneous fees.
	 */
	public function actionMadmin()
	{
		$model=new StudentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentTransaction']))
			$model->attributes=$_GET['StudentTransaction'];

		$this->render('madmin',array(
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
		$model=MiscellaneousFeesPaymentTransaction::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='miscellaneous-fees-payment-transaction-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
