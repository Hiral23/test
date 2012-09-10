<?php

class InwardController extends RController
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
	/*public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}*/


	public function actionView($id)
       {            
               $inward_details=new InwardDetails('mysearch');
               $inward_details->unsetAttributes();  // clear any default values
               if(isset($_GET['InwardDetails']))
                       $inward_details->attributes=$_GET['InwardDetails'];

               $this->render('view',array(
                       'model'=>$this->loadModel($id),'inward_details'=>$inward_details,
               ));
       }

       public function actionNew_view($id)
       {            
               $inward_details=new InwardDetails('mysearch');
               $inward_details->unsetAttributes();  // clear any default values
               if(isset($_GET['InwardDetails']))
                       $inward_details->attributes=$_GET['InwardDetails'];

               $this->render('new_view',array(
                       'model'=>$this->loadModel($id),'inward_details'=>$inward_details,
               ));
       }



	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Inward;
		$date;
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['Inward']))
		{
			$model->attributes=$_POST['Inward'];

			$model->org_name_id = Yii::app()->user->getState('org_id');
			$model->invoice_date=new CDbExpression('NOW()');
			$model->received_date=new CDbExpression('NOW()');
			$tomorrow = mktime(0,0,0,date("m"),date("d"),date("Y"));
			$date=date("Y-m-d", $tomorrow );

			$model->photo=CUploadedFile::getInstance($model,'photo');
			$model->document=CUploadedFile::getInstance($model,'document');
			if($model->photo == null)
			{
				
				$valid_photo = true;

			}
			else
			{
				$valid_photo = $model->validate();
			}
			if($model->document != null) 
					$model->document->saveAs(Yii::getPathOfAlias('webroot'). '/inward_document/' . $model->document);
				
			if($valid_photo)
			{
				if($model->photo != null)
				{
						$newfname;
						$ext= substr(strrchr($model->photo,'.'),1);
						if($ext!=null)
						{				
							$newfname = $model->company_name . '_' . $date.'.'.$ext;
							$model->photo->saveAs(Yii::getPathOfAlias('webroot'). '/inward_image/' . $model->photo=$newfname);
						}
						$model->save();
						Yii::import("ext.EPhpThumb.EPhpThumb");
						$thumb=new EPhpThumb();
						$thumb->init(); //this is needed
						$thumb->create(Yii::getPathOfAlias('webroot').'/inward_image/'.$model->photo = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/inward_image/'.$model->photo);
				}
				else
				{
					$model->photo = "no_image" ;
					$model->save();
				}
				
					//$model->photo->saveAs(Yii::getPathOfAlias('webroot'). '/inward_image/' . $model->photo);
				
				$this->redirect(array('admin'));
			}
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
		$old_model=$this->loadModel($id);
		$date;
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['Inward']))
		{
			$model->attributes=$_POST['Inward'];
			$model->photo=CUploadedFile::getInstance($model,'photo');
			$model->document=CUploadedFile::getInstance($model,'document');
			$tomorrow = mktime(0,0,0,date("m"),date("d"),date("Y"));
			$date=date("Y-m-d", $tomorrow );

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
							$newfname = $model->company_name . '_' . $date.'.'.$ext;
							$model->photo->saveAs(Yii::getPathOfAlias('webroot'). '/inward_image/' . $model->photo=$newfname);
						}
						Yii::import("ext.EPhpThumb.EPhpThumb");
						$thumb=new EPhpThumb();
						$thumb->init(); //this is needed
						$thumb->create(Yii::getPathOfAlias('webroot').'/inward_image/'.$model->photo = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/inward_image/'.$model->photo);
						
					
			}
			}
			if($model->document==null)
				$model->document = $old_model->document;


			if($model->save())
			{
				if(CUploadedFile::getInstance($model,'document') != null) 
					$model->document->saveAs(Yii::getPathOfAlias('webroot'). '/inward_document/' . $model->document);
				$this->redirect(array('new_view','id'=>$model->id));
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
		/*
		$dataProvider=new CActiveDataProvider('Inward');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
		*/
		$model=new Inward('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Inward']))
			$model->attributes=$_GET['Inward'];

		$this->render('admin',array(
			'model'=>$model,
		));

	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Inward('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Inward']))
			$model->attributes=$_GET['Inward'];

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
		$model=Inward::model()->findByPk((int)$id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='inward-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
