<?php

class FeesMasterController extends RController
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

		$fees_details=new FeesMasterTransaction('mysearch');
		$fees_details->unsetAttributes();  // clear any default values
		if(isset($_GET['FeesMasterTransaction']))
			$fees_details->attributes=$_GET['FeesMasterTransaction'];

		$this->render('view',array(
			'model'=>$this->loadModel($id),'fees_details'=>$fees_details,
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new FeesMaster;

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['FeesMaster']))
		{
			$model->attributes=$_POST['FeesMaster'];
			$model->fees_master_created_by =  Yii::app()->user->id;
			$model->fees_master_created_date = new CDbExpression('NOW()');
			$model->fees_organization_id = Yii::app()->user->getState('org_id');

			if($model->save())
				$this->redirect(array('view','id'=>$model->fees_master_id));
		}

		$this->render('create',array(
			'model'=>$model,
		));



	}
	public function actionGenerateFees()
	{
		$model=new FeesMaster;
			
			$org_id=Yii::app()->user->getState('org_id');
			//$model->attributes=$_POST['FeesMaster'];
			$branch_array=Branch::model()->findAll(array('condition'=>'branch_organization_id ='.$org_id));
			$quota_array=Quota::model()->findAll(array('condition'=>'	quota_organization_id='.$org_id));
			$sem_array=AcademicTerm::model()->findAll(array('condition'=>'	academic_term_organization_id='.$org_id.' and current_sem=1'));
			foreach($branch_array as $b)
			{
				foreach($quota_array as $q)
				{
					foreach($sem_array as $s)
					{
					
						$model->setIsNewRecord(true);	
						$model->fees_master_id=null;
						$model->fees_branch_id=(int)$b->branch_id;
						$model->fees_academic_term_id=(int)($s->academic_term_period_id);
						$model->fees_academic_term_name_id = (int)($s->academic_term_id);
						$model->fees_quota_id=(int)($q->quota_id);


			$model->fees_master_name=$b->branch_alias.'-'.$s->academic_term_name.'-'.$q->quota_name;
										
						$model->fees_master_created_by =  Yii::app()->user->id;
						$model->fees_master_created_date = new CDbExpression('NOW()');
						$model->fees_organization_id = $org_id;	
						$model->save();
						
					}
		
				}
			}

			
			$this->redirect(array('admin'));
		

		



	}
	
	public function actionGenerateMultipleFees()
	{
		$model=new FeesMaster;

		
			if(isset($_POST['FeesMaster']['fees_branch_id']) && isset($_POST['FeesMaster']['fees_quota_id']))
			{
				$org_id=Yii::app()->user->getState('org_id');
				
				$checkboxbranchvalue = $_POST['FeesMaster']['fees_branch_id'];
				$checkboxquotavalue = $_POST['FeesMaster']['fees_quota_id'];
				$model->attributes=$_POST['FeesMaster'];
				$branchvalue=array();
				$quotavalue=array();
				
				if(count($checkboxbranchvalue)==0||count($checkboxquotavalue)==0)
				{
					echo "set error";
					exit;	
				}
				else
				{
					$sem_array=AcademicTerm::model()->findAll(array('condition'=>'	academic_term_organization_id='.$org_id.' and current_sem=1'));
					foreach($sem_array as $s)
					{
						foreach($checkboxbranchvalue as $b)
						{
							foreach($checkboxquotavalue as $q)
							{
								$check_existing_record=FeesMaster::model()->findByAttributes(array('fees_quota_id'=>$q, 'fees_branch_id'=>$b,'fees_academic_term_name_id'=>$s->academic_term_id,'fees_organization_id'=> $org_id));								
								if($check_existing_record)
								{}
								else
								{
									$model->setIsNewRecord(true);	
									$model->fees_master_id=null;
									$model->fees_branch_id=(int)($b);
									$model->fees_academic_term_id=(int)($s->academic_term_period_id);
									$model->fees_academic_term_name_id = (int)($s->academic_term_id);
									$model->fees_quota_id=(int)($q);


						$model->fees_master_name=Branch::model()->findByPk($b)->branch_alias.'-'.$s->academic_term_name.'-'.Quota::model()->findByPk($q)->quota_name;
										
									$model->fees_master_created_by =  Yii::app()->user->id;
									$model->fees_master_created_date = new CDbExpression('NOW()');
									$model->fees_organization_id = $org_id;	
									$model->save();
								}
								
							}
						}
						
					}

				}
				
				
						
		

				$this->redirect(array('admin'));
			}
			else
			{
				$this->render('MultipleFeesGenerateForm',array(
			'model'=>$model,
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

		if(isset($_POST['FeesMaster']))
		{
			$model->attributes=$_POST['FeesMaster'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->fees_master_id));
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
/*		$dataProvider=new CActiveDataProvider('FeesMaster');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/
		$model=new FeesMaster('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeesMaster']))
			$model->attributes=$_GET['FeesMaster'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new FeesMaster('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeesMaster']))
			$model->attributes=$_GET['FeesMaster'];

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
		$model=FeesMaster::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='fees-master-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
	public function actiongetItemName()
        {
            $data=  AcademicTerm::model()->findAll('academic_term_period_id=:academic_term_period_id',
		 array(':academic_term_period_id'=>(int) $_REQUEST['FeesMaster']['fees_academic_term_id']));
                  
            $data=CHtml::listData($data,'academic_term_id','academic_term_name');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }
}
