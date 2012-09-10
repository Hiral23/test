<?php

class SubjectMasterController extends RController
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
		$syllabus=new SubjectSyllabus;
		$textbook=new SubjectTextbook;
		$refbook=new SubjectRefbook;
		$sub_guidelines=new SubjectGuidelines('mysearch');
		$sub_tscheme=new subjectTeachingSchema('mysearch');
		$sub_exam=new SubjectExaminationMark('mysearch');

		$sub_guidelines->unsetAttributes();  // clear any default values
		$sub_tscheme->unsetAttributes();  // clear any default values
		$sub_exam->unsetAttributes();  // clear any default values


		if(isset($_GET['SubjectGuidelines']))
			$sub_guidelines->attributes=$_GET['SubjectGuidelines'];
		if(isset($_GET['subjectTeachingSchema']))
			$sub_tscheme->attributes=$_GET['subjectTeachingSchema'];
		if(isset($_GET['SubjectExaminationMark']))
			$sub_tscheme->attributes=$_GET['SubjectExaminationMark'];
		$this->render('view',array(
			'model'=>$this->loadModel($id),'syllabus'=> $syllabus,'textbook'=>$textbook, 'refbook'=>$refbook,'sub_guidelines'=>$sub_guidelines,'sub_tscheme'=>$sub_tscheme,'sub_exam'=>$sub_exam,
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new SubjectMaster;
		

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['SubjectMaster']) && isset($_POST['myCheckBoxList']))
		{
			$model->attributes=$_POST['SubjectMaster'];
			foreach($_POST['myCheckBoxList'] as $type) {
				$model->setIsNewRecord(true);
				$model->subject_master_id=null;
				$model->subject_master_type_id = $type;
				$model->subject_master_organization_id = Yii::app()->user->getState('org_id');
				$model->subject_master_updated_user = Yii::app()->user->id;
		    		$model->subject_master_updated_date = new CDbExpression('NOW()');
				$model->save();
			}
				$this->redirect(array('admin'));
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

		if(isset($_POST['SubjectMaster']) && isset($_POST['myCheckBoxList']))
		{
			$model->attributes=$_POST['SubjectMaster'];
			$flag = false;
			foreach($_POST['myCheckBoxList'] as $type) 
			{
			 if($flag) 
			 {
				$model->setIsNewRecord(true);
				$model->subject_master_id=null;
			 }
				$model->subject_master_type_id = $type;
				$model->subject_master_organization_id = Yii::app()->user->getState('org_id');
				$model->subject_master_updated_user = Yii::app()->user->id;
		    		$model->subject_master_updated_date = new CDbExpression('NOW()');
				$model->save();
				$flag = true;
		        }
				$this->redirect(array('view','id'=>$model->subject_master_id));
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
		/*
		$dataProvider=new CActiveDataProvider('SubjectMaster');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
		*/
		$model=new SubjectMaster('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['SubjectMaster']))
			$model->attributes=$_GET['SubjectMaster'];

		$this->render('admin',array(
			'model'=>$model,
		));

	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new SubjectMaster('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['SubjectMaster']))
			$model->attributes=$_GET['SubjectMaster'];

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
		$model=SubjectMaster::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='subject-master-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
	public function actiongetItemName()
        {
            $data=  AcademicTerm::model()->findAll('academic_term_period_id=:academic_term_period_id',
		 array(':academic_term_period_id'=>(int) $_REQUEST['SubjectMaster']['subject_master_academic_terms_period_id']));
                  
            $data=CHtml::listData($data,'academic_term_id','academic_term_name');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }
}
