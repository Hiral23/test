<?php

class SubjectSyllabusController extends RController
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
				'actions'=>array('index','view','other_create','facultyplancreate','actualcreate'),
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
		$model=new SubjectSyllabus;

		$model->sub_id=$_REQUEST['id'];
		

		
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['SubjectSyllabus']))
		{
			$model->attributes=$_POST['SubjectSyllabus'];

			$model->subject_syllabus_type = "GTU Type";			
			$model->created_by = Yii::app()->user->id;
            		$model->created_date = new CDbExpression('NOW()');
			
			if($model->save())
				$this->redirect(array('SubjectMaster/view','id'=>$_REQUEST['id']));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	public function actionFacultyplancreate($id)
	{

		$model=$this->loadModel($id);
		$model->scenario = 'facultyplancreate';
		
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['SubjectSyllabus']))
		{
			$model->attributes=$_POST['SubjectSyllabus'];
			$model->teaching_method=$_POST['SubjectSyllabus']['teaching_method'];
			$model->start_date=$_POST['SubjectSyllabus']['start_date'];
			$model->end_date=$_POST['SubjectSyllabus']['end_date'];
			$model->duration=$_POST['SubjectSyllabus']['duration'];
			if($model->save())
				$this->redirect(array('SubjectMaster/view','id'=>$model->sub_id));
		}

		$this->render('facultyplancreate',array(
			'model'=>$model,
		));
	}
	public function actionActualcreate($id)
	{
		//$model=new SubjectSyllabus('actualcreate');	
		
		$model=$this->loadModel($id);
		$model->scenario = 'actualcreate';
		
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['SubjectSyllabus']))
		{
			$model->attributes=$_POST['SubjectSyllabus'];
			$model->actual_start_date=$_POST['SubjectSyllabus']['actual_start_date'];
			$model->actual_end_date=$_POST['SubjectSyllabus']['actual_end_date'];
			$model->actual_duration=$_POST['SubjectSyllabus']['actual_duration'];
			$model->actual_remarks=$_POST['SubjectSyllabus']['actual_remarks'];
			if($model->save())
				$this->redirect(array('SubjectMaster/view','id'=>$model->sub_id));
		}

		$this->render('actualcreate',array(
			'model'=>$model,
		));
	}
	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionOther_create()
	{
		$model=new SubjectSyllabus;

		$model->sub_id=$_REQUEST['id'];
		

		
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['SubjectSyllabus']))
		{
			$model->attributes=$_POST['SubjectSyllabus'];
			$model->subject_syllabus_type = "Other Type";
			$model->created_by = Yii::app()->user->id;
            		$model->created_date = new CDbExpression('NOW()');
			
			if($model->save())
				$this->redirect(array('SubjectMaster/view','id'=>$_REQUEST['id']));
		}

		$this->render('other_create',array(
			'model'=>$model,
		));
	}
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);
		$temp = SubjectMaster::model()->findByPk($model->sub_id);
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['SubjectSyllabus']))
		{
			$model->attributes=$_POST['SubjectSyllabus'];
			if($model->save())
				$this->redirect(array('SubjectMaster/view','id'=>$temp->subject_master_id));
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
		$dataProvider=new CActiveDataProvider('SubjectSyllabus');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new SubjectSyllabus('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['SubjectSyllabus']))
			$model->attributes=$_GET['SubjectSyllabus'];

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
		$model=SubjectSyllabus::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='subject-syllabus-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
