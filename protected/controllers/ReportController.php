<?php

class ReportController extends Controller
{
	public function actionView()
	{
		$this->render('view');
	}

	public function actionStudInfoReport()
	{
		$model=new StudentTransaction;
		$branch = null;
		$acdm_period = null;
		$selected_list=null;
		if(!empty($_POST['StudentTransaction']['student_transaction_branch_id'])&&!empty($_POST['StudentTransaction']['student_academic_term_period_tran_id']))
		{

			$branch=$_POST['StudentTransaction']['student_transaction_branch_id'];
			$acdm_period=$_POST['StudentTransaction']['student_academic_term_period_tran_id'];
		
		}
		//else
		//{
		$this->render('studinfo_dyanamic_report_form',array(
               'model'=>$model,'selected_list'=>$selected_list,'branch'=>$branch,'acdm_period'=>$acdm_period,
       		));
		//}
	
	}
	public function actionSelectedList()
	{
		//echo "Hello";
		//$p=$_POST['stud_info'];
		$model=new StudentTransaction;
		$branch=$_POST['StudentTransaction']['branch'];
		$acdm_period=$_POST['StudentTransaction']['acdm_period'];
				
		if(!empty($_POST['stud_info']))
		{
		//print_r($_POST['stud_info']);
			$student_data=StudentTransaction::model()->findAll(array('condition'=>'student_transaction_branch_id='.$branch.' and 	student_academic_term_period_tran_id='.$acdm_period));
		
		$this->render('stud_report_view',array(
               'model'=>$model,'branch'=>$branch,'acdm_period'=>$acdm_period,'stud_data'=>$student_data,'selected_list'=>$_POST['stud_info'],
       		));
		}
		else
		{
			$this->render('studinfo_dyanamic_report_form',array(
               'model'=>$model,'branch'=>$branch,'acdm_period'=>$acdm_period,
       		));	
		}	
	}

	

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}
