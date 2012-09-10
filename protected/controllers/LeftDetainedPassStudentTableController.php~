<?php

class LeftDetainedPassStudentTableController extends RController
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
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
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
		$model=new LeftDetainedPassStudentTable;

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['LeftDetainedPassStudentTable']))
		{
			$model->attributes=$_POST['LeftDetainedPassStudentTable'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('create',array(
			'model'=>$model,
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

		if(isset($_POST['LeftDetainedPassStudentTable']))
		{
			$model->attributes=$_POST['LeftDetainedPassStudentTable'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
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
		/*$dataProvider=new CActiveDataProvider('LeftDetainedPassStudentTable');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/
		$model=new LeftDetainedPassStudentTable('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['LeftDetainedPassStudentTable']))
			$model->attributes=$_GET['LeftDetainedPassStudentTable'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new LeftDetainedPassStudentTable('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['LeftDetainedPassStudentTable']))
			$model->attributes=$_GET['LeftDetainedPassStudentTable'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	public function actionLeftClearStudent()
	{
		$model=new StudentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentTransaction']))
			$model->attributes=$_GET['StudentTransaction'];

		$this->render('leftClearStudent',array(
			'model'=>$model,
		));
	}

	public function actionUpdate_status()
	{
		$stud_id  = StudentTransaction::model()->findByPk($_REQUEST['id']);
		$status_model = new LeftDetainedPassStudentTable;
		if(isset($_POST['update_status_student']))
		{

			/*$pass_model = LeftDetainedPassStudentTable::model()->findAll(array('condition'=>'student_id='.$stud_id->student_transaction_id.' and academic_term_period_id='.$stud_id->student_academic_term_period_tran_id.' and sem='.$stud_id->student_academic_term_name_id));
			print_r($pass_model);
			if(!isset($pass_model)) { */
				$status_model->attributes=$_POST['LeftDetainedPassStudentTable'];
				$status_model->student_id = $stud_id->student_transaction_id;
				$status_model->status_id = $status_model->status_id;
				$status_model->academic_term_period_id = $stud_id->student_academic_term_period_tran_id;
				$status_model->sem = $stud_id->student_academic_term_name_id;
				$status_model->creation_date = new CDbExpression('NOW()');
				$status_model->created_by = Yii::app()->user->id;
				$status_model->oraganization_id = Yii::app()->user->getState('org_id');
				$status_model->save();
				$this->redirect(array('leftDetainedPassStudentTable/admin'));
			/*}
			else
			{
				$pass_model->status_id = 6;
				$pass_model->save();
				$this->redirect(array('leftDetainedPassStudentTable/leftClearStudent'));

			}*/
		}
		
		$model=new StudentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentTransaction']))
			$model->attributes=$_GET['StudentTransaction'];

		$this->render('update_status',array(
			'model'=>$model,'status_model'=>$status_model,
		));
	}


	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=LeftDetainedPassStudentTable::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='left-detained-pass-student-table-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
