<?php

class AttendenceController extends RController
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $row1;
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
				'actions'=>array('index','view','searchstudid','displaychart','display','searchstudid1','getItemName','getItemName1','updatecreate','updatesave','Chart','viewchart','getItemBranch','chartreport','Popbrowser'),
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

		$model=new Attendence;
		
		$tran=new StudentTransaction;
		$count = 0;
		$row1 = array();
	
		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		
		if(isset($_POST['Attendence']) && isset($_POST['search']))
		{
			$model->attributes=$_POST['Attendence'];
			
			$branch_id=$model->branch_id;
			$shift_id=$model->shift_id;
			$div_id=$model->div_id;
			$batch_id=$model->batch_id;
			$sub_id=$model->sub_id;
			$sem_id=$model->sem_id;
			$faculty_id = $model->employee_id;
			
			$date = $model->attendence_date;
			$sem_name = $model->sem_name_id;
			
			$all_array = array('branch_id'=>$branch_id,'faculty_id'=>$faculty_id,'shift_id'=>$shift_id,'div_id'=>$div_id,'batch_id'=>$batch_id,'sub_id'=>$sub_id,'sem_id'=>$sem_id,'date'=>$date,'sem_name'=>$sem_name);

			if($model->batch_id)
			{
				$row1 = Yii::app()->db->createCommand()

				->select('student_transaction_id,student_transaction_student_id')
				->from('student_transaction')
				->where('student_transaction_branch_id='.$branch_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_division_id='.$div_id.' and student_transaction_batch_id='.$batch_id.' and student_academic_term_name_id='.$sem_name.' and student_academic_term_period_tran_id ='.$sem_id)
				->queryAll();
			}
			else
			{
				$row1 = Yii::app()->db->createCommand()
				->select('student_transaction_id,student_transaction_student_id')
				->from('student_transaction')
				->where('student_transaction_branch_id='.$branch_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_division_id='.$div_id.' and student_academic_term_name_id='.$sem_name.' and student_academic_term_period_tran_id ='.$sem_id)
				->queryAll();
			}
			$count = count($row1);
			
			if($count == 0)
			{
				//echo "No data found";
				//$this->redirect(array('attendence/create'));	
				Yii::app()->user->setFlash('not-select-attendece', "No Student Found for this Criteria");
				$this->redirect(array('create'));
			}
			Yii::app()->user->setState('stud_array',$row1);	
			Yii::app()->user->setState('all_array',$all_array);	
		
		//	$this->redirect(array('admin'));
		}
		else if(isset($_POST['Attendence']) && isset($_POST['save']) && isset($_POST['Attendence']['st_id']))
		{
			$row1 = Yii::app()->user->getState('stud_array');
			$all_array = Yii::app()->user->getState('all_array');

			$model->attributes=$_POST['Attendence'];
		
			$checkboxvalue = $_POST['Attendence']['st_id'];
			$count=count($row1);
			
			$final = array();
			$i=0;
			foreach($row1 as $r1)
			{

				$final[$i] = $r1['student_transaction_student_id'];   // we have insert student info table in attendence table.....
				$i++;
			}
			
			
			
			$result = array_diff($final, $checkboxvalue);


			foreach($checkboxvalue as $present_list)
			{
				$model->setIsNewRecord(true);

				$model->branch_id=$all_array['branch_id'];
				$model->shift_id=$all_array['shift_id'];
				$model->div_id=$all_array['div_id'];
				$model->batch_id=$all_array['batch_id'];
				$model->sub_id=$all_array['sub_id'];
				$model->sem_id=$all_array['sem_id'];
				$model->sem_name_id=$all_array['sem_name'];
				$model->attendence_date = $all_array['date'];
				$model->id=null;				
				$model->st_id = $present_list;
				$model->attendence = 'P';			   
				$model->employee_id = $all_array['faculty_id'];
				$model->attendence_organization_id = Yii::app()->user->getState('org_id');
		   		$model->save();	
			}


			foreach($result as $absent_list)
			{
				$model->branch_id=$all_array['branch_id'];
				$model->shift_id=$all_array['shift_id'];
				$model->div_id=$all_array['div_id'];
				$model->batch_id=$all_array['batch_id'];
				$model->sub_id=$all_array['sub_id'];
				$model->sem_id=$all_array['sem_id'];

				$model->setIsNewRecord(true);
				$model->id=null;				
				$model->st_id = $absent_list;
				$model->attendence = 'A';
				$model->employee_id = $all_array['faculty_id'];
				$model->attendence_organization_id = Yii::app()->user->getState('org_id');
				$model->attendence_date = $all_array['date'];
		   		$model->save();	
			}
			
			$this->redirect(array('admin'));
			
		
		

		}

		
		//exit;
		$this->render('create',array(
			'model'=>$model,'row1'=>$row1,
		));
	}
	public function actionShow_Student_View()
	{
		$model=new Attendence;
		
		$tran=new StudentTransaction;
		$count = 0;
		$row1 = array();
	
		
			//$model->attributes=$_POST['Attendence'];
			$div=Division::model()->findByPk($_REQUEST['division_id']);
			$branch_id=$div->branch_id;
			$sub_id=$_REQUEST['subject_id'];
			$sem_id=$div->academic_period_id;
			$date = date('Y:m:d');
			$sem_name = $div->academic_name_id;
			$shift_id=1;
			$div_id=$_REQUEST['division_id'];
			if($_REQUEST['batch']!=null)
			{
				$batch_id=$_REQUEST['batch'];
				$row1 = Yii::app()->db->createCommand()

				->select('student_transaction_id,student_transaction_student_id')
				->from('student_transaction')
				->where('student_transaction_branch_id='.$branch_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_division_id='.$div_id.' and student_transaction_batch_id='.$batch_id.' and student_academic_term_name_id='.$sem_name.' and student_academic_term_period_tran_id ='.$sem_id)
				->queryAll();
				$all_array = array('branch_id'=>$branch_id,'shift_id'=>$shift_id,'div_id'=>$div_id,'batch_id'=>$batch_id,'sub_id'=>$sub_id,'sem_id'=>$sem_id,'date'=>$date,'sem_name'=>$sem_name);			
			}
			else
			{
				$row1 = Yii::app()->db->createCommand()
				->select('student_transaction_id,student_transaction_student_id')
				->from('student_transaction')
				->where('student_transaction_branch_id='.$branch_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_division_id='.$div_id.' and student_academic_term_name_id='.$sem_name.' and student_academic_term_period_tran_id ='.$sem_id)
				->queryAll();
			}
			
			$all_array = array('branch_id'=>$branch_id,'shift_id'=>$shift_id,'div_id'=>$div_id,'batch_id'=>"",'sub_id'=>$sub_id,'sem_id'=>$sem_id,'date'=>$date,'sem_name'=>$sem_name,'faculty_id'=>$_REQUEST['faculty_id']);

			
			$count = count($row1);
			
			if($count == 0)
			{
				//echo "No data found";
				//$this->redirect(array('attendence/create'));	
				Yii::app()->user->setFlash('not-select-attendece', "No Student Found for this Criteria");
				//$this->redirect(array('show_student_view'));
			}
			Yii::app()->user->setState('stud_array',$row1);	
			Yii::app()->user->setState('all_array',$all_array);	
			

		if(isset($_POST['save']))
		{
			$row1 = Yii::app()->user->getState('stud_array');
			$all_array = Yii::app()->user->getState('all_array');

			$model->attributes=$_POST['Attendence'];
		
			$checkboxvalue = $_POST['Attendence']['st_id'];
			$count=count($row1);
			
			$final = array();
			$i=0;
			foreach($row1 as $r1)
			{

				$final[$i] = $r1['student_transaction_student_id'];   // we have insert student info table in attendence table.....
				$i++;
			}
			
			
			
			$result = array_diff($final, $checkboxvalue);


			foreach($checkboxvalue as $present_list)
			{
				$model->setIsNewRecord(true);

				$model->employee_id=$all_array['faculty_id'];				
				$model->branch_id=$all_array['branch_id'];
				$model->shift_id=$all_array['shift_id'];
				$model->div_id=$all_array['div_id'];
				$model->batch_id=$all_array['batch_id'];
				$model->sub_id=$all_array['sub_id'];
				$model->sem_id=$all_array['sem_id'];
				$model->sem_name_id=$all_array['sem_name'];
				$model->attendence_date = $all_array['date'];
				$model->id=null;				
				$model->st_id = $present_list;
				$model->attendence = 'P';			   
				$model->attendence_organization_id = Yii::app()->user->getState('org_id');
		   		$model->save();	
			}


			foreach($result as $absent_list)
			{
				$model->branch_id=$all_array['branch_id'];
				$model->shift_id=$all_array['shift_id'];
				$model->div_id=$all_array['div_id'];
				$model->batch_id=$all_array['batch_id'];
				$model->sub_id=$all_array['sub_id'];
				$model->sem_id=$all_array['sem_id'];
				$model->employee_id=$all_array['faculty_id'];

				$model->setIsNewRecord(true);
				$model->id=null;				
				$model->st_id = $absent_list;
				$model->attendence = 'A';
				$model->attendence_organization_id = Yii::app()->user->getState('org_id');
				$model->attendence_date = $all_array['date'];
		   		$model->save();	
			}
			
			$this->redirect(array('admin'));
			
		
		

		}

		$this->render('show_student_view',array(
			'model'=>$model,'row1'=>$row1,
		));
		
		
	
	}
	

	public function actionsearchstudid1()
	{
		$model=new Attendence;
		
		$tran=new StudentTransaction;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Attendence']['st_id']))
		{
		
			
			$row1 = Yii::app()->user->getState('stud_array');
			$all_array = Yii::app()->user->getState('all_array');

			$model->attributes=$_POST['Attendence'];
		
			$checkboxvalue = $_POST['Attendence']['st_id'];
			$count=count($row1);
			
			$final = array();
			$i=0;
			foreach($row1 as $r1)
			{

				$final[$i] = $r1['student_transaction_student_id'];   // we have insert student info table in attendence table.....
				$i++;
			}
			
			
			
			$result = array_diff($final, $checkboxvalue);


			foreach($checkboxvalue as $present_list)
			{
				$model->setIsNewRecord(true);

				$model->branch_id=$all_array['branch_id'];
				$model->shift_id=$all_array['shift_id'];
				$model->div_id=$all_array['div_id'];
				$model->batch_id=$all_array['batch_id'];
				$model->sub_id=$all_array['sub_id'];
				$model->sem_id=$all_array['sem_id'];
				$model->sem_name_id=$all_array['sem_name'];
				$model->attendence_date = $all_array['date'];
				$model->id=null;				
				$model->st_id = $present_list;
				$model->attendence = 'P';			   
				$model->attendence_organization_id = Yii::app()->user->getState('org_id');
		   		$model->save();	
			}


			foreach($result as $absent_list)
			{
				$model->branch_id=$all_array['branch_id'];
				$model->shift_id=$all_array['shift_id'];
				$model->div_id=$all_array['div_id'];
				$model->batch_id=$all_array['batch_id'];
				$model->sub_id=$all_array['sub_id'];
				$model->sem_id=$all_array['sem_id'];

				$model->setIsNewRecord(true);
				$model->id=null;				
				$model->st_id = $absent_list;
				$model->attendence = 'A';
				$model->attendence_organization_id = Yii::app()->user->getState('org_id');
				$model->attendence_date = $all_array['date'];
		   		$model->save();	
			}
			
			$this->redirect(array('admin'));
			
		}
	
	} 
	

	public function actiondisplay()
	{

		$model=new Attendence;
		
		$tran=new StudentTransaction;
		$count = 0;
		$row1 = array();
	
		// Uncomment the following line if AJAX validation is needed
		//$this->performAjaxValidation($model);

		
		if(isset($_POST['Attendence']))
		{
			$model->attributes=$_POST['Attendence'];
			
			$branch_id=$model->branch_id;
			$shift_id=$model->shift_id;
			$div_id=$model->div_id;
			$batch_id=$model->batch_id;
			$sub_id=$model->sub_id;
			$sem_id=$model->sem_id;
			$date = $model->attendence_date;
			$sem_name = $model->sem_name_id;
			
			$all_array = array('branch_id'=>$branch_id,'shift_id'=>$shift_id,'div_id'=>$div_id,'batch_id'=>$batch_id,'sub_id'=>$sub_id,'sem_id'=>$sem_id,'date'=>$date,'sem_name'=>$sem_name);

			if($model->batch_id)
			{
			$row1 = Yii::app()->db->createCommand()

			->select('student_transaction_id,student_transaction_student_id')
			->from('student_transaction')
			->where('student_transaction_branch_id='.$branch_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_division_id='.$div_id.' and student_transaction_batch_id='.$batch_id.' and student_academic_term_name_id='.$sem_name.' and student_academic_term_period_tran_id ='.$sem_id)
			->queryAll();
			}
			else
			{
			$row1 = Yii::app()->db->createCommand()
			->select('student_transaction_id,student_transaction_student_id')
			->from('student_transaction')
			->where('student_transaction_branch_id='.$branch_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_division_id='.$div_id.' and student_academic_term_name_id='.$sem_name.' and student_academic_term_period_tran_id ='.$sem_id)
			->queryAll();
			}
			$count = count($row1);
			
			if($count == 0)
			{
				//echo "No data found";
				//$this->redirect(array('attendence/create'));	
				Yii::app()->user->setFlash('not-select-attendece', "No Student Found for this Criteria");
				$this->redirect(array('create'));
			}
			Yii::app()->user->setState('stud_array',$row1);	
			Yii::app()->user->setState('all_array',$all_array);	
		
		//	$this->redirect(array('admin'));
		}
		//exit;
		$this->render('display',array(
			'model'=>$model,'row1'=>$row1,
		));
	}

	/*
	public function actionsearchstudid()
	{
		$model=new Attendence;
		
		$tran=new StudentTransaction;
		$count = 0;
		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		
		if(isset($_POST['Attendence']))
		{
			$model->attributes=$_POST['Attendence'];
			
			$branch_id=$model->branch_id;
			$shift_id=$model->shift_id;
			$div_id=$model->div_id;
			$batch_id=$model->batch_id;
			$sem_id=$model->sem_id;
			
			if($model->batch_id)
			{
			$row1 = Yii::app()->db->createCommand()
			->select('student_transaction_id,student_transaction_student_id')
			->from('student_transaction')
			->where('student_transaction_branch_id='.$branch_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_division_id='.$div_id.' and student_transaction_batch_id='.$batch_id)
			->queryAll();
			}
			else
			{
			$row1 = Yii::app()->db->createCommand()
			->select('student_transaction_id,student_transaction_student_id')
			->from('student_transaction')
			->where('student_transaction_branch_id='.$branch_id.' and student_transaction_shift_id='.$shift_id.' and student_transaction_division_id='.$div_id)
			->queryAll();
			}
			$count = count($row1);
			
			if($count == 0)
			{
				//echo "No data found";
				//$this->redirect(array('attendence/create'));	
				Yii::app()->user->setFlash('not-select-attendece', "No Student Found for this Criteria");
				$this->redirect(array('create'));
			}
			//$this->redirect(array('admin'));
		}
		
		$this->render('searchstudid',array(
			'model'=>$model,'row1'=>$row1,
		));		
	} 
	*/
	
	

	
	public function actionupdateCreate()
	{
		$model=new Attendence;
		
		$tran=new StudentTransaction;
		$count = 0;
		$row1 = array();
	
		// Uncomment the following line if AJAX validation is needed
		$this->performAjaxValidation($model);

		
		if(isset($_POST['Attendence']))
		{
			$model->attributes=$_POST['Attendence'];
			
			$branch_id=$model->branch_id;
			$shift_id=$model->shift_id;
			$div_id=$model->div_id;
			$batch_id=$model->batch_id;
			$sub_id=$model->sub_id;
			$sem_id=$model->sem_id;
			$date = $model->attendence_date;
			$sem_name = $model->sem_name_id;
			
			$all_array = array('branch_id'=>$branch_id,'shift_id'=>$shift_id,'div_id'=>$div_id,'batch_id'=>$batch_id,'sub_id'=>$sub_id,'sem_id'=>$sem_id,'date'=>$date,'sem_name'=>$sem_name);

			if($model->batch_id)
			{
			$row1 = Yii::app()->db->createCommand()
			->select('id,st_id,attendence,shift_id,sem_id,sem_name_id,branch_id,sub_id,batch_id,attendence_date')
			->from('attendence')
			->where('branch_id='.$branch_id.' and shift_id='.$shift_id.' and div_id='.$div_id.' and sub_id='.$sub_id.' and sem_id='.$sem_id.' and batch_id='.$batch_id.' and attendence_date="'.$date.'"')
			->queryAll();

			}
			else
			{
			$row1 = Yii::app()->db->createCommand()
			->select('id,st_id,attendence,shift_id,sem_id,sem_name_id,branch_id,sub_id,attendence_date')
			->from('attendence')
			->where('branch_id='.$branch_id.' and shift_id='.$shift_id.' and div_id='.$div_id.' and sub_id='.$sub_id.' and sem_id='.$sem_id.' and attendence_date="'.$date.'"')
			->queryAll();
			}
	
			Yii::app()->user->setState('stud_array',$row1);	
			Yii::app()->user->setState('all_array',$all_array);	
			$count = count($row1)	;
			//echo $count;
			if($count == 0)
			{
				//echo "No data found";
				//$this->redirect(array('attendence/create'));	
				Yii::app()->user->setFlash('not-select-attendece', "No Student Found for this Criteria");
				$this->redirect(array('updatecreate'));
			}
		
		}
		
		$this->render('update_create',array(
			'model'=>$model,'row1'=>$row1,
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
		// $this->performAjaxValidation($model);

		if(isset($_POST['Attendence']))
		{
			$model->attributes=$_POST['Attendence'];
			if(!empty($model->attendence))
			{
				$model->save(false);
				$this->redirect(array('admin'));
			}
			else
			{
				$model->addError('attendence','');
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

		$model=new Attendence('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Attendence']))
			$model->attributes=$_GET['Attendence'];

		$this->render('admin',array(
			'model'=>$model,
		));
	
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Attendence('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Attendence']))
			$model->attributes=$_GET['Attendence'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	public function actionChart()
	{
		$model=new Attendence('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Attendence']))
			$model->attributes=$_GET['Attendence'];
		$branch = Yii::app()->db->createCommand()
                	->selectDistinct('branch_id')
			->from('attendence')
			//->order('branch_id DESC')
			->queryAll();
		$attendence = Yii::app()->db->createCommand()
                	->select('count(attendence)')
			->from('attendence')
			->group('branch_id')
			->where('attendence="P"')
			->queryAll();
		$xaxis = array();
		$yaxis = array();
		
		foreach($branch as $xvalue)
		{ 
			foreach($xvalue as $x)
			$xaxis[] = Branch::model()->findByPk($x)->branch_name;			
		}
		foreach($attendence as $yvalue)
		{ 	
			foreach($yvalue as $y)		
			$yaxis[] = $y;
		}
		
		$this->render('chart',array(
			'model'=>$model,'xaxis'=>$xaxis,'yaxis'=>$yaxis,
		));
	}
	

	public function actionChartReport()		// display chart reports
	{
	 	$model=new Attendence;	
		if(!empty($_POST['Attendence']['sem_id']))
		{

			$acdm_period=$_POST['Attendence']['sem_id'];

			$this->render('chart_table',array(
		               'acdm_period'=>$acdm_period,
               ));	
		}
		else
		{
			$this->render('chart_report',array(
                       'model'=>$model,
				 ));
		
		}
              
	}
	public function actionDisplayChart()	//display Pie chart
	{
		$model=new Attendence;	
		$attendence = Yii::app()->db->createCommand()
		        	->select('attendence')
				->from('attendence')
				->where('attendence="P" and branch_id='.$_REQUEST['branch_id'].' and sem_name_id='.$_REQUEST['sem_name_id'].' and sem_id='.$_REQUEST['sem_id'])
				->queryAll();
			
		$attendence1 = Yii::app()->db->createCommand()
		        	->select('attendence')
				->from('attendence')
				->where('attendence="A" and branch_id='.$_REQUEST['branch_id'].' and sem_name_id='.$_REQUEST['sem_name_id'].' and sem_id='.$_REQUEST['sem_id'])
				->queryAll();
			
		$totalstudent = Yii::app()->db->createCommand()
		        	->select('attendence')
				->from('attendence')
				->where('branch_id='.$_REQUEST['branch_id'].' and sem_name_id='.$_REQUEST['sem_name_id'].' and sem_id='.$_REQUEST['sem_id'])
				->queryAll();
		
		if(count($totalstudent)!=0)
		{
		$present=(count($attendence)*100)/count($totalstudent);
		
		$absent=(count($attendence1)*100)/count($totalstudent);
		}
		else
		{
			$present=0;
			$absent=0;
			
		}
		$this->render('piechart',array(
                       'model'=>$model,'present'=>$present,'absent'=>$absent,
				 ));
		
	}
	

	public function actionViewchart()
       {
               //$model=new User;
		 $model=new Attendence;
               // Uncomment the following line if AJAX validation is needed
               // $this->performAjaxValidation($model)
		
			
		  Yii::app()->clientScript->registerScript('someScript', "
                	      
			 $('#attendence-form').submit(function() {

                       var acdm_period,acdm_name,branch,div,subject;
                    
		       acdm_period = document.getElementById('Attendence_acdm_period').value;
                       acdm_name = document.getElementById('Attendence_acdm_name').value;
                       branch = document.getElementById('Attendence_branch').value;
                       div = document.getElementById('Attendence_div').value;
                       subject = document.getElementById('Attendence_subject').value;

                      myWindow=window.open('popbrowser?acdm_period='+acdm_period+'&acdm_name='+acdm_name+'&branch='+branch+'&div='+div+'&subject='+subject,'',config='height=420, width=900, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no, titlebar=0','id=new');
			   myWindow.focus();
                    	});
                       ");

		      
		if(!empty($_POST['Attendence']['acdm_period']) || !empty($_POST['Attendence']['branch']) || !empty($_POST['Attendence']['subject']))
		{
	              // $this->redirect(array('view','id'=>$model->id));
			
               }
       
               $this->render('chart',array(
                       'model'=>$model,
               ));
       }

       public function actionPopbrowser()
       {
               $this->layout='timetable_layout';
	       $model=new Attendence;
               $this->render('display_chart',array(
                       'model'=>$model,
               ));        
       }

     /*  public function actionStudentwise_report()	"Done by Karmraj"
       {
	       $model=new Attendence;
		if(isset($_POST['Attendence']))
		{
			$model->attributes=$_POST['Attendence'];

			$subject_data = SubjectMaster::model()->findAll(array('condition'=>'subject_master_academic_terms_period_id='.$model->sem_id.' AND subject_master_academic_terms_name_id='.$model->sem_name_id.' AND subject_master_branch_id ='.$model->branch_id.' AND subject_master_organization_id='.Yii::app()->user->getState('org_id')));

			$student_data = StudentInfo::model()->findAll(array('condition'=>'student_enroll_no="'.trim($model->student_enroll_no).'"'));
		
			$this->render('student_report_view',array(
                       'subject_data'=>$subject_data,'student_data'=>$student_data,
		        ));
			
		}
		else {
               $this->render('studentwise_report',array(
                       'model'=>$model,
               ));    
		}    
       }*/

	 public function actionStudentwise_report()	//done by Ravi B
    	   {
	       $model=new Attendence;
		if(!empty($_POST['Attendence']['student_enroll_no']))
		{
			$model->attributes=$_POST['Attendence'];
			
			$start=null;
			$end=null;
			$en=trim($model->student_enroll_no);
			$student_data = StudentInfo::model()->findByAttributes(array('student_enroll_no'=>$en));
		
			if(empty($student_data))
			{
				Yii::app()->user->setFlash('no_student_found', "No Student Found for this Enrollment no.");
						$this->render('studentwise_report',array(
				       'model'=>$model,
			       					));  
			}
			else
			{
				$stud_trans=StudentTransaction::model()->findByAttributes(array('student_transaction_student_id'=>$student_data['student_id']));
			
				$subject_data = SubjectMaster::model()->findAll(array('condition'=>'subject_master_academic_terms_period_id='.$stud_trans['student_academic_term_period_tran_id'].' AND subject_master_academic_terms_name_id='.$stud_trans['student_academic_term_name_id'].' AND subject_master_branch_id ='.$stud_trans['student_transaction_branch_id'].' AND subject_master_organization_id='.Yii::app()->user->getState('org_id')));
				
			

				if(!empty($_POST['Attendence']['start_date'])&& !empty($_POST['Attendence']['end_date']))
				{
					$start=$_POST['Attendence']['start_date'];
					$end=$_POST['Attendence']['end_date'];
	
						$this->render('student_report_view',array(
				       'subject_data'=>$subject_data,'student_data'=>$student_data,'start'=>$start,'end'=>$end,));

				
				
						
				}
				else if(!empty($_POST['Attendence']['start_date'])&& empty($_POST['Attendence']['end_date']))
				{
					Yii::app()->user->setFlash('no_student_found', "Select End-Date Criteria.");	
					$this->render('studentwise_report',array('model'=>$model,));	
			
				}
				else if(empty($_POST['Attendence']['start_date'])&& !empty($_POST['Attendence']['end_date']))
				{
					Yii::app()->user->setFlash('no_student_found', "Select Start-Date Criteria.");	
					$this->render('studentwise_report',array('model'=>$model,));	
			
				}
				else
				{
						$this->render('student_report_view',array(
				       'subject_data'=>$subject_data,'student_data'=>$student_data,'start'=>$start,'end'=>$end,
					));

				}
			}	
		}//!empty($_POST['Attendence']['student_enroll_no']) if end
		else 
		{
		
               	$this->render('studentwise_report',array(
                       'model'=>$model,
               		));
		
		}    
       	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=Attendence::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='attendence-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
	
	public function actiongetItemName()
        {
            $data=  AcademicTerm::model()->findAll('academic_term_period_id=:academic_term_period_id',
		 array(':academic_term_period_id'=>(int) $_REQUEST['Attendence']['sem_id']));
                  
            $data=CHtml::listData($data,'academic_term_id','academic_term_name');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }
	
	public function actiongetItemName1()
        {
           
		$org_id=Yii::app()->user->getState('org_id');
		$div = array();
		$sub = array();
		$bat = array();
		$data= array();
		$data1=array();
		$data2= array();
		$data3=array();
	
		
		// for update division

		$data=Division::model()->findAll(array('condition'=>'branch_id='.(int) $_REQUEST['Attendence']['branch_id'].' and academic_name_id='.(int)$_REQUEST['Attendence']['sem_name_id'].' and division_organization_id='.$org_id));
			
		
		foreach($data as $d1)
		{
			$data2=Batch::model()->findAll(array('condition'=>'div_id='.$d1['division_id']));
			break;

		}
	  	$data2=CHtml::listData($data2,'batch_id','batch_code');
		foreach($data2 as $value2=>$name2)
		{
			$bat .= CHtml::tag('option',
				array('value'=>$value2),CHtml::encode($name2),true);
		}	
          	
	    	$data3=CHtml::listData($data,'division_id','division_code');
	    	foreach($data3 as $value=>$name)
	    	{
	        	$div .= CHtml::tag('option',
	                array('value'=>$value),CHtml::encode($name),true);
	    	}
	
		$data1=SubjectMaster::model()->findAll(array('condition'=>'subject_master_branch_id='.(int) $_REQUEST['Attendence']['branch_id'].' and subject_master_academic_terms_name_id='.(int) $_REQUEST['Attendence']['sem_name_id'].' and subject_master_organization_id='.$org_id));
                  	
		$data1=CHtml::listData($data1, 'subject_master_id' ,'subject_master_name');

		foreach($data1 as $value1=>$name1)
		{
		        $sub .= CHtml::tag('option',
		                array('value'=>$value1),CHtml::encode($name1),true);
		}
		
		
		  
		
		  echo CJSON::encode(array(
						'div'=>$div,
						'sub'=>$sub,
						'batch'=>$bat,
					    ));
		 
        }
	public function actiongetBatch()
        {
	    $org_id=Yii::app()->user->getState('org_id');
            $data=Batch::model()->findAll(array('condition'=>'div_id='.(int)$_REQUEST['Attendence']['div_id'].' and batch_organization_id='.$org_id));
                  
            $data=CHtml::listData($data,'batch_id','batch_code');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }
}
