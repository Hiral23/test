<?php

class FeedbackDetailsController extends RController
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
				'actions'=>array('index','view','Mycreate','msg',''),
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

	public function actionCreate_result()
	{
		$model=new FeedbackDetails;
		if(isset($_POST['FeedbackDetails']))
		{
			//print_r($_POST['FeedbackDetails']);
			$myobj = $_POST['FeedbackDetails'];
//			print_r($myobj);
			foreach($myobj as $obj)
			{
				foreach($obj as $list)
				{
				 echo $list;
				}
			}

		}
		$this->render('create_result',array(
			'model'=>$model,
		));
	}

	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}
	public function actionMsg($id)
	{
		$this->render('msg',array(
			'model'=>$this->loadModel($id),
		));
	}
	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new FeedbackDetails;
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);
		
		if(isset($_POST['FeedbackDetails']))
		{
			$model->attributes=$_POST['FeedbackDetails'];
			$model->feedback_id = $_REQUEST['id'];
			$model->feedback_details_organization_id = Yii::app()->user->getState('org_id');
			if($model->save())
				$this->redirect(array('feedbackMaster/view','id'=>$_REQUEST['id']));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}
	
	public function actionMycreate($id)
	{
		$model=new FeedbackDetails;	
		$gfeedback=new Givefeedback;	
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['FeedbackDetails']))
		{
			$model->attributes=$_POST['FeedbackDetails'];			
			$id=$_REQUEST['id'];
			$cnt=$_POST['FeedbackDetails']['my'];
			$que=$model->question;
			
			if(count($que)!=$cnt)
			{
				Yii::app()->user->setFlash('Feedback',"Give All Questions`s Answer");
				$this->redirect(array('feedbackDetails/mycreate','id'=>$id));
			}
			
			foreach($que as $a)
			{	
				if($a != 0)
			        {	
					$queid=(int)($a/10);
					$rank=($a%10);
					$gfeedback->setIsNewRecord(true);
					$gfeedback->id=null;		
					$gfeedback->question_id=$queid;
					$gfeedback->rank = $rank;
					$gfeedback->feedback_master_id = $id;
					$gfeedback->give_feedback_organization_id = Yii::app()->user->getState('org_id');
					$gfeedback->save(false);
			        }
			}
			$this->redirect(array('feedbackDetails/msg','id'=>$id));

		}
		
		$this->render('mycreate',array(
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

		if(isset($_POST['FeedbackDetails']))
		{
			$model->attributes=$_POST['FeedbackDetails'];
			if($model->save())
				$this->redirect(array('feedbackMaster/view','id'=>$_REQUEST['id']));
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
/*		$dataProvider=new CActiveDataProvider('FeedbackDetails');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/
		$model=new FeedbackDetails('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeedbackDetails']))
			$model->attributes=$_GET['FeedbackDetails'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new FeedbackDetails('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeedbackDetails']))
			$model->attributes=$_GET['FeedbackDetails'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	public function actionQuestion()
	{
		$model=new FeedbackDetails('mysearch');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FeedbackDetails']))
			$model->attributes=$_GET['FeedbackDetails'];
		$this->render('question',array(
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
		$model=FeedbackDetails::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='feedback-details-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
