<?php

class SubjectRefbookController extends RController
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
				'actions'=>array('index','view','other_create'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update','other_create'),
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
		$model=new SubjectRefbook;
		$model->sub_id=$_REQUEST['id'];
		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['SubjectRefbook']))
		{
			$model->attributes=$_POST['SubjectRefbook'];
			$model->created_by = Yii::app()->user->id;
            		$model->created_date = new CDbExpression('NOW()');
			$model->subject_refbook_type = "GTU Type";

			$model->photo = CUploadedFile::getInstance($model,'photo');

			if($model->photo == null)
			{
				
				$valid_photo = true;

			}
			else
			{
				$valid_photo = $model->validate();
			}
			if($valid_photo)
			{
			
				if($model->photo != null)
				{
					$newfname;
					$ext= substr(strrchr($model->photo,'.'),1);
					if($ext!=null)
					{				
						$newfname = $model->title.'.'.$ext;
						$model->photo->saveAs(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo=$newfname);
					}
					
					$model->save();	
					Yii::import("ext.EPhpThumb.EPhpThumb");
					$thumb=new EPhpThumb();
					$thumb->init(); //this is needed
					$thumb->create(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo);									
				}
				else
				{
					$model->photo = "no_image";
					$model->save(false);
				}
				
				$this->redirect(array('SubjectMaster/view','id'=>$_REQUEST['id']));
			}
			
			
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}
	public function actionOther_create()
	{
		$model=new SubjectRefbook;
		
		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		if(isset($_POST['SubjectRefbook']))
		{
			$model->attributes=$_POST['SubjectRefbook'];
			$model->sub_id=$_REQUEST['id'];
			$model->created_by = Yii::app()->user->id;
            		$model->created_date = new CDbExpression('NOW()');
			$model->subject_refbook_type = "Other Type";
			

			$model->photo = CUploadedFile::getInstance($model,'photo');

			if($model->photo == null)
			{
				
				$valid_photo = true;

			}
			else
			{
				$valid_photo = $model->validate();
			}
			if($valid_photo)
			{
			
				if($model->photo != null)
				{
					$newfname;
					$ext= substr(strrchr($model->photo,'.'),1);
					if($ext!=null)
					{				
						$newfname = $model->title.'.'.$ext;
						$model->photo->saveAs(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo=$newfname);
					}
					
					$model->save();	
					Yii::import("ext.EPhpThumb.EPhpThumb");
					$thumb=new EPhpThumb();
					$thumb->init(); //this is needed
					$thumb->create(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo);									
				}
				else
				{
					$model->photo = "no_image";
					$model->save(false);
				}
				
				$this->redirect(array('SubjectMaster/view','id'=>$_REQUEST['id']));
			}
			
			
		}

		$this->render('other_create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);
		$old_model=$this->loadModel($id);
		

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['SubjectRefbook']))
		{
			$model->attributes=$_POST['SubjectRefbook'];
			$model->photo=CUploadedFile::getInstance($model,'photo');
			$temp = SubjectMaster::model()->findByPk($model->sub_id);
			if($model->photo == null)
			{
				
				$valid_photo = true;

			}
			else
			{
				$valid_photo = $model->validate();
			}
			if($valid_photo)
			{
			
				if($model->photo==null)
					$model->photo = $old_model->photo;
				else
				{
					$newfname;
					$ext= substr(strrchr($model->photo,'.'),1);
					if($ext!=null)
					{				
						$newfname = $model->title.'.'.$ext;
						$model->photo->saveAs(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo=$newfname);
					}
					$model->save(false);
					Yii::import("ext.EPhpThumb.EPhpThumb");
					$thumb=new EPhpThumb();
					$thumb->init(); //this is needed
					$thumb->create(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/book_images/'.$model->photo);
					
				}
				$model->save(false);
				$this->redirect(array('SubjectMaster/view','id'=>$temp->subject_master_id));
			}
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
		$dataProvider=new CActiveDataProvider('SubjectRefbook');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new SubjectRefbook('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['SubjectRefbook']))
			$model->attributes=$_GET['SubjectRefbook'];

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
		$model=SubjectRefbook::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='subject-refbook-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
