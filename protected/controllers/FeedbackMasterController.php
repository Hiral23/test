<?php

class FeedbackMasterController extends RController
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
				'users'=>array('*'),
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

		
		$feedback_details=new FeedbackDetails('mysearch');
		$feedback_details->unsetAttributes();  // clear any default values
		if(isset($_GET['FeedbackDetails']))
			$feedback_details->attributes=$_GET['FeedbackDetails'];

		$this->render('view',array(
			'model'=>$this->loadModel($id),'feedback_details'=>$feedback_details,
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new FeedbackMaster;

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['FeedbackMaster']))
		{
			$model->attributes=$_POST['FeedbackMaster'];
			//$model->feedback_date = new CDbExpression('NOW()');
			$model->feedback_master_organization_id = Yii::app()->user->getState('org_id');
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

		if(isset($_POST['FeedbackMaster']))
		{
			$model->attributes=$_POST['FeedbackMaster'];
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
/*		$dataProvider=new CActiveDataProvider('FeedbackMaster');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/
	{
		$model=new FeedbackMaster('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeedbackMaster']))
			$model->attributes=$_GET['FeedbackMaster'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new FeedbackMaster('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeedbackMaster']))
			$model->attributes=$_GET['FeedbackMaster'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}
	public function actionNew_admin()
	{
		$model=new FeedbackMaster('my_search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeedbackMaster']))
			$model->attributes=$_GET['FeedbackMaster'];

		$this->render('new_admin',array(
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
		$model=FeedbackMaster::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='feedback-master-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}

	public function actiongetItemName()
        {
            $data=  AcademicTerm::model()->findAll('academic_term_period_id=:academic_term_period_id',
		 array(':academic_term_period_id'=>(int) $_REQUEST['FeedbackMaster']['feedback_academic_term_period_id']));
                  
            $data=CHtml::listData($data,'academic_term_id','academic_term_name');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }

}
