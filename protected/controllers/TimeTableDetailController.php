<?php

class TimeTableDetailController extends RController
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
				'actions'=>array('index','view','getItemName','getItemName1'),
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
		//$this->layout='timetable_layout';
		$model=new TimeTableDetail;
		//$timetable=new TimeTable;
		
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['TimeTableDetail']))
		{
			$model->attributes=$_POST['TimeTableDetail'];
			if(empty($_POST['TimeTableDetail']['batch_id']))
				$model->batch_id=0;
			else
				$model->batch_id=$_POST['TimeTableDetail']['batch_id'];


			//$timetable->attributes=$_POST['TimeTable'];
			$model->timetable_id =$_REQUEST['timetable_id'];
			$model->day = $_REQUEST['day'];
			$model->lec = $_REQUEST['lec'];

			$model->faculty_emp_id=$_REQUEST['faculty_emp_id'];
			//$model->branch_id=$_REQUEST['branch_id'];
			$model->acdm_period_id=$_REQUEST['acdm_period_id'];
			$model->time_table_detail_organization_id=Yii::app()->user->getState('org_id');
			//$model->acdm_name_id=$_REQUEST['acdm_name_id'];
			$model->created_by =  Yii::app()->user->id;
			$model->creation_date = new CDbExpression('NOW()');
			
			// echo $model->timetable_id.$model->day.$model->lec.$model->faculty_emp_id.$model->created_by.$model->creation_date;
			//exit;
			
			if($model->save())
				$this->redirect(array('/timeTable/CreateFinaltable','id'=>$model->timetable_id));
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

		if(isset($_POST['TimeTableDetail']))
		{
			$model->attributes=$_POST['TimeTableDetail'];
			$model->attributes=$_POST['TimeTableDetail'];
			if(empty($_POST['TimeTableDetail']['batch_id']))
				$model->batch_id=0;
			else
				$model->batch_id=$_POST['TimeTableDetail']['batch_id'];


			//$timetable->attributes=$_POST['TimeTable'];
			$model->timetable_id =$_REQUEST['timetable_id'];
			$model->day = $_REQUEST['day'];
			$model->lec = $_REQUEST['lec'];

			$model->faculty_emp_id=$_REQUEST['faculty_emp_id'];
			//$model->branch_id=$_REQUEST['branch_id'];
			$model->acdm_period_id=$_REQUEST['acdm_period_id'];
			$model->time_table_detail_organization_id=Yii::app()->user->getState('org_id');
			//$model->acdm_name_id=$_REQUEST['acdm_name_id'];
			$model->created_by =  Yii::app()->user->id;
			$model->creation_date = new CDbExpression('NOW()');
			
			// echo $model->timetable_id.$model->day.$model->lec.$model->faculty_emp_id.$model->created_by.$model->creation_date;
			//exit;
			if($model->save())
				$this->redirect(array('/timeTable/CreateFinaltable','id'=>$_REQUEST['timetable_id']));
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
		$dataProvider=new CActiveDataProvider('TimeTableDetail');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new TimeTableDetail('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['TimeTableDetail']))
			$model->attributes=$_GET['TimeTableDetail'];

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
		$model=TimeTableDetail::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='time-table-detail-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
	
	public function actiongetItemName()
        {
		$sub = array();
		$room_arr=array();
		$batch_arr = array();
	   	$day=$_POST['TimeTableDetail']['day'];
		$lec=$_POST['TimeTableDetail']['lec'];
		$acdm_period_id=$_POST['TimeTableDetail']['acdm_period_id'];
		$type=null;
		$org_id=Yii::app()->user->getState('org_id');
		$timetable_id=$_POST['TimeTableDetail']['timetable_id'];	
	      	
		$type=SubjectType::model()->findByPk((int)$_REQUEST['TimeTableDetail']['subject_type'])->subject_type_name;
		if($type=="Theory")
		{
			$data= SubjectMaster::model()->findAll(array('condition'=> 'subject_master_type_id='.(int) $_REQUEST['TimeTableDetail']['subject_type'].' and subject_master_branch_id='.(int)$_REQUEST['TimeTableDetail']['branch_id'].' and  subject_master_organization_id='.$org_id));
			
			$data=CHtml::listData($data,'subject_master_id','subject_master_name');
			
			foreach($data as $value=>$name)
			{
				$sub .=CHtml::tag('option',
					array('value'=>$value),CHtml::encode($name),true);
			}
			
			$class='classroom';
			$roomid = RoomCategory::model()->findAll(array('condition'=>'category_name="'.$class.'" and room_category_organization_id='.$org_id));
			foreach($roomid as $r)
			{
				$typeid= $r['id'];
			}
			$room=array();
			$room1=Yii::app()->db->createCommand()
					    ->select('id')
					    ->from('room_details_master')
					    ->where('room_category='.$typeid.' and  room_details_organization_id='.$org_id.' AND id NOT IN(select room_id from time_table_detail where day='.$day.' and lec='.$lec.' and acdm_period_id='.$acdm_period_id.' and acdm_name_id='.(int)$_REQUEST['TimeTableDetail']['acdm_name_id'].' and  time_table_detail_organization_id='.$org_id.' and timetable_id='.$timetable_id.')')
				    	    ->queryAll();
					
					
						foreach($room1 as $n)
						{
							$temp=$n['id'];
						 	$room[$temp]=RoomDetailsMaster::model()->findByPk($n['id'])->room_name;				
						}
					

			//$room=RoomDetailsMaster::model()->findAll(array('condition'=>'room_category='.$typeid));
			//$room=CHtml::listData($room,'id','room_name');
			foreach($room as $value=>$name)
			{
				$room_arr.=CHtml::tag('option',
					array('value'=>$value),CHtml::encode($name),true);
			}
		}  //thory if end
		else 
		{

			//subject_master_academic_terms_name_id
			$semestername=AcademicTerm::model()->findByPk((int)$_REQUEST['TimeTableDetail']['acdm_name_id'])->academic_term_name;			
			$data= SubjectMaster::model()->findAll(
			array('condition'=>'subject_master_type_id='.(int)$_REQUEST['TimeTableDetail']['subject_type'].' and subject_master_branch_id='.(int)$_REQUEST['TimeTableDetail']['branch_id'].' and  subject_master_organization_id='.$org_id));

			$data=CHtml::listData($data,'subject_master_id','subject_master_name');
			foreach($data as $value=>$name)
			{
				$sub .=CHtml::tag('option',
					array('value'=>$value),CHtml::encode($name),true);
			}
			
			$class='Lab';
			$room = RoomCategory::model()->findAll(array('condition'=>'category_name="'.$class.'"'.' and room_category_organization_id='.$org_id));
			foreach($room as $r)
				$typeid= $r['id'];

			$room=array();
			$room1=Yii::app()->db->createCommand()
					    ->select('id')
					    ->from('room_details_master')
					    ->where('room_category='.$typeid.' and  room_details_organization_id='.$org_id.' AND id NOT IN(select room_id from time_table_detail where day='.$day.' and lec='. $lec.' and acdm_period_id='.$acdm_period_id.' and acdm_name_id='.(int)$_REQUEST['TimeTableDetail']['acdm_name_id'].' and timetable_id='.$timetable_id.')')
				    	    ->queryAll();
					
					if(empty($room1))
					{
						$f=1;
						echo "<b style='color:red;'>No Room Availble.Create room first.</b>";
						
					}
					else
					{
						foreach($room1 as $n)
						{
							$temp=$n['id'];
						 	$room[$temp]=RoomDetailsMaster::model()->findByPk($n['id'])->room_name;				
						}
					}


			//$room=RoomDetailsMaster::model()->findAll(array('condition'=>'room_category='.$typeid));
			//$room=CHtml::listData($room,'id','room_name');
			foreach($room as $value=>$name)
			{
				$room_arr .=CHtml::tag('option',
					array('value'=>$value),CHtml::encode($name),true);
			}

			

				$batch1=Yii::app()->db->createCommand()
					    ->select('batch_id')
					    ->from('batch')
					    ->where('div_id='.(int)$_REQUEST['TimeTableDetail']['division_id'].' and batch_organization_id='.$org_id.' and batch_id NOT IN(select batch_id from time_table_detail where day='.$day.' and lec='.$lec.' and timetable_id='.$timetable_id.')')
				    	    ->queryAll();

				$batch=array();
					if(empty($batch1))
					{
						$f=1;
						echo "<b style='color:red;'>No Batch Availble.Create batch first.</b>";
						
					}
					else
					{	
				
						foreach($batch1 as $n)
						{
							$temp=$n['batch_id'];
						 	$batch[$temp]=Batch::model()->findByPk($n['batch_id'])->batch_code;				
						}
					}

			//$batch= Batch::model()->findAll(
			//array('condition'=>'div_id='.(int) $_REQUEST['TimeTableDetail']['division_id']));
			//$batch=CHtml::listData($batch,'batch_id','batch_code');
			foreach($batch as $value=>$name)
			{
				$batch_arr .=CHtml::tag('option',
					array('value'=>$value),CHtml::encode($name),true);
			}
		}// theory else end
		
			echo CJSON::encode(array(
					'sub_type'=>$type,					
					'sub' => $sub,
					'room'=> $room_arr,
					'batch'=> $batch_arr,
					
					
				    ));

        }
	
	public function actiongetItemName1()
        {
         	
		$data=array();	
		$day=$_POST['TimeTableDetail']['day'];
		$lec=$_POST['TimeTableDetail']['lec'];
		$acdm_period_id=$_POST['TimeTableDetail']['acdm_period_id'];
		$org_id=Yii::app()->user->getState('org_id');
		$timetable_id=$_POST['TimeTableDetail']['timetable_id'];

			
		$check=TimeTableDetail::model()->findAllByAttributes(
								array(),
								$condition  = 'day = :day AND lec = :lec AND branch_id = :branch_id AND acdm_name_id = :acdm_name_id AND timetable_id = :timetable_id',
								$params     = array(
									
									':day' => $day,
						 			':lec' => $lec,
									':branch_id' =>(int)$_REQUEST['TimeTableDetail']['branch_id'],
									':timetable_id' => $timetable_id,
									':acdm_name_id'=>(int)$_REQUEST['TimeTableDetail']['acdm_name_id']
									));

			$flag=0;
			foreach($check as $c)
			{
				if($c['subject_type']==2)
				{
					$flag=1;
					break;				
				}
				
			}
			$data=array();
			if($flag==1)
			{
				$data= Division::model()->findAll(array('condition'=>'academic_name_id='.(int) $_REQUEST['TimeTableDetail']['acdm_name_id'].' and academic_period_id='.$acdm_period_id.' and branch_id='.(int)$_REQUEST['TimeTableDetail']['branch_id'].' and division_organization_id='.$org_id));
			$data=CHtml::listData($data,'division_id','division_code');	
			}	
			else
			{
			
			$div1=Yii::app()->db->createCommand()
				    ->select('division_id , division_code')
				    ->from('division')
				    ->where('branch_id='.(int)$_REQUEST['TimeTableDetail']['branch_id']. ' and academic_name_id='.(int)$_REQUEST['TimeTableDetail']['acdm_name_id'].' and division_organization_id='.$org_id.' and division_id NOT IN(select division_id from time_table_detail where day='.$day.' and lec='.$lec.' and branch_id='.(int)$_REQUEST['TimeTableDetail']['branch_id'].' and acdm_period_id='.$acdm_period_id.' and acdm_name_id='.(int) $_REQUEST['TimeTableDetail']['acdm_name_id'].' and timetable_id='.$timetable_id.')')
			    	    ->queryAll();
					if(empty($div1))
					{
						echo "<b style='color:red;'>No Division Availble.Create division first.</b>";
						$f=1;
					}
					else
					{
						foreach($div1 as $n)
						{
							$temp=$n['division_id'];
						 	$data[$temp]=Division::model()->findByPk($n['division_id'])->division_code;				
						}
						
					}
			}		
				
		    //$data=CHtml::listData($data,'division_id','division_code');

		    foreach($data as $value=>$name)
		    {
		        echo CHtml::tag('option',
		                array('value'=>$value),CHtml::encode($name),true);
		    }
        }
}
