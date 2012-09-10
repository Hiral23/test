<?php

class StudentTransactionController extends RController
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
				'actions'=>array('index','view','final_view','new_view','test_view'),
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
	public function actionNew_view($id)
	{
		$this->render('new_view',array(
			'model'=>$this->loadModel($id),
		));
	}

	public function actionFinal_view($id)
	{
		$test=new StudentDocsTrans;
		$docs_model=new StudentDocsTrans('mysearch');
		$stu_record=new StudentAcademicRecordTrans('mysearch');
		$docs_model->unsetAttributes();  // clear any default values
		$stu_record->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentDocsTrans']))
			$docs_model->attributes=$_GET['StudentDocsTrans'];
		
		if(isset($_GET['StudentAcademicRecordTrans']))
			$stu_record->attributes=$_GET['StudentAcademicRecordTrans'];

		
		$this->render('final_view',array(
			'model'=>$this->loadModel($id),'docs_model'=>$docs_model,'test'=>$test,'stu_record'=>$stu_record,
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new StudentTransaction;
		$info =new StudentInfo;
		$user =new User;
		$photo =new StudentPhotos;
		$address=new StudentAddress;
		$lang=new LanguagesKnown;
		$ass_comp = new assignCompanyUserTable;

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation(array($info,$model,$photo,$address,$lang));

		// ADD JAVASCRIPT (CLIENTSCRIPT TO DISPLAY CURRENT ADDRESS AS PERMENT ADDRESS)

		 Yii::app()->clientScript->registerScript("address-script", "
			    function FillAddress(f)
				{
					
					if(f.address.checked == true)
					{
			    			f.StudentAddress_student_address_p_line1.value = f.StudentAddress_student_address_c_line1.value;
			    			f.StudentAddress_student_address_p_line2.value = f.StudentAddress_student_address_c_line2.value;
			    			f.StudentAddress_student_address_p_pin.value = f.StudentAddress_student_address_c_pin.value;


						f.StudentAddress_student_address_p_city.selectedIndex = f.StudentAddress_student_address_c_city.selectedIndex;

						f.StudentAddress_student_address_p_state.selectedIndex = f.StudentAddress_student_address_c_state.selectedIndex;

						f.StudentAddress_student_address_p_country.selectedIndex = f.StudentAddress_student_address_c_country.selectedIndex;


						

			   		}

				};
			", CClientScript::POS_END);


		if(isset($_POST['StudentTransaction'], $_POST['StudentInfo'], $_POST['StudentPhotos'], $_POST['StudentAddress'], $_POST['LanguagesKnown']))
		{
			$model->attributes=$_POST['StudentTransaction'];
			$info->attributes=$_POST['StudentInfo'];
			$photo->attributes=$_POST['StudentPhotos'];
			$address->attributes=$_POST['StudentAddress'];
			$lang->attributes=$_POST['LanguagesKnown'];
			
			$info->student_created_by = Yii::app()->user->id;
			$info->student_creation_date = new CDbExpression('NOW()');

			$photo->student_photos_path = CUploadedFile::getInstance($photo,'student_photos_path');

			if($photo->student_photos_path == null)
			{
				$valid_photo = true;

			}
			else
			{
				$valid_photo = $photo->validate();
			}

			
			$valid = $info->validate();
			$valid_add = $address->validate();
			$valid_lang = $lang->validate();
			//$valid_photo = $photo->validate();
			$valid1 =$model->validate();

			if($valid && $valid1 && $valid_add && $valid_photo && $valid_lang)  
			     {
				  
				  $user->user_organization_email_id = $info->student_email_id_1;
				  $user->user_password =  md5($info->student_email_id_1.$info->student_email_id_1);
				  $user->user_created_by =  Yii::app()->user->id;
				  $user->user_creation_date = new CDbExpression('NOW()');
				  $user->user_type = "student";
	
				  if($info->save(false))  
					{  
					    $user->save(false);
					    $address->save(false);
					    $lang->save(false);
						
						if($photo->student_photos_path != null)
						{
							$newfname;
							$photo->student_photos_path = CUploadedFile::getInstance($photo,'student_photos_path');
							$ext= substr(strrchr($photo->student_photos_path,'.'),1);
							if($ext!=null)
							{				
								
								$newfname = $info->student_id . '_' . $info->student_first_name.'.'.$ext;
								$photo->student_photos_path->saveAs(Yii::getPathOfAlias('webroot').'/stud_images/' .$photo->student_photos_path = $newfname);
							$photo->save(false);
							Yii::import("ext.EPhpThumb.EPhpThumb");
							$thumb=new EPhpThumb();
							$thumb->init(); //this is needed
							$thumb->create(Yii::getPathOfAlias('webroot').'/stud_images/'.$photo->student_photos_path = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/stud_images/'.$photo->student_photos_path);
							}
							
							
							
						}
						else
						{
							$photo->student_photos_path = "no_image";
							$photo->save(false);
						}

					    $model->student_transaction_languages_known_id= $lang->languages_known_id;
					    $model->student_transaction_student_id = $info->student_id;
					    $model->student_transaction_user_id = $user->user_id;
		                            $model->student_transaction_student_address_id = $address->student_address_id;
					    $model->student_transaction_student_photos_id = $photo->student_photos_id;
					    $model->student_transaction_organization_id = Yii::app()->user->getState('org_id');
					    $model->save(); // not false because it hasn't been validated

						// Assign company to user...

						$ass_comp->assign_user_id = $user->user_id;
						$ass_comp->assign_role_id = 4;
						$ass_comp->assign_org_id = Yii::app()->user->getState('org_id');
						$ass_comp->assign_created_by = Yii::app()->user->id;
						$ass_comp->assign_creation_date = new CDbExpression('NOW()');
						$ass_comp->save();

					    $this->redirect(array('final_view','id'=>$model->student_transaction_id));
			    		}
	
			      }

		}

		$this->render('create',array(
			'model'=>$model,'info'=>$info,'address'=>$address,'photo'=>$photo,'lang'=>$lang,
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
		$info = StudentInfo::model()->findByPk($model->student_transaction_student_id);
	        $address = StudentAddress::model()->findByPk($model->student_transaction_student_address_id);
		$photo = StudentPhotos::model()->findByPk($model->student_transaction_student_photos_id);
		$old_photo = StudentPhotos::model()->findByPk($model->student_transaction_student_photos_id);
		$lang = LanguagesKnown::model()->findByPk($model->student_transaction_languages_known_id);
	
		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation(array($info,$model,$photo,$address,$lang));


		// ADD JAVASCRIPT (CLIENTSCRIPT TO DISPLAY CURRENT ADDRESS AS PERMENT ADDRESS)

		 Yii::app()->clientScript->registerScript("address-script", "
			    function FillAddress(f)
				{
					
					if(f.address.checked == true)
					{

			    			f.StudentAddress_student_address_p_line1.value = f.StudentAddress_student_address_c_line1.value;
			    			f.StudentAddress_student_address_p_line2.value = f.StudentAddress_student_address_c_line2.value;
			    			f.StudentAddress_student_address_p_pin.value = f.StudentAddress_student_address_c_pin.value;


						f.StudentAddress_student_address_p_city.selectedIndex = f.StudentAddress_student_address_c_city.selectedIndex;

						f.StudentAddress_student_address_p_state.selectedIndex = f.StudentAddress_student_address_c_state.selectedIndex;

						f.StudentAddress_student_address_p_country.selectedIndex = f.StudentAddress_student_address_c_country.selectedIndex;


			   		}

				};
			", CClientScript::POS_END);



		if(isset($_POST['StudentTransaction'], $_POST['StudentInfo'], $_POST['StudentAddress'], $_POST['StudentPhotos'],$_POST['LanguagesKnown']))
		{
			$model->attributes=$_POST['StudentTransaction'];
			$info->attributes=$_POST['StudentInfo'];
			$address->attributes=$_POST['StudentAddress'];
			$photo->attributes=$_POST['StudentPhotos'];
	                $lang->attributes=$_POST['LanguagesKnown'];

			$photo->student_photos_path = CUploadedFile::getInstance($photo,'student_photos_path');
			if($photo->student_photos_path == null)
			{
				$valid_photo = true;

			}
			else
			{
				$valid_photo = $photo->validate();
			}

	
			$valid = $info->validate();
			$valid_add = $address->validate();
			$valid_lang = $lang->validate();
			$valid1 =$model->validate();
			
			if($valid && $valid1 && $valid_add && $valid_lang && $valid_photo)  
				
			     {
				  if($info->save(false))  
					{  
					    $model->student_transaction_student_id = $info->student_id;
					    $address->save(false);
					    $lang->save(false);
					    $photo->student_photos_path = CUploadedFile::getInstance($photo,'student_photos_path');
					    if($photo->student_photos_path != null)
					    {
							$newfname;
							$ext= substr(strrchr($photo->student_photos_path,'.'),1);
							if($ext!=null)
							{				
								
								$newfname = $info->student_id . '_' . $info->student_first_name.'.'.$ext;
								$photo->student_photos_path->saveAs(Yii::getPathOfAlias('webroot').'/stud_images/' .$photo->student_photos_path = $newfname);
								$photo->save();
								Yii::import("ext.EPhpThumb.EPhpThumb");
								$thumb=new EPhpThumb();
								$thumb->init(); //this is needed
								$thumb->create(Yii::getPathOfAlias('webroot').'/stud_images/'.$photo->student_photos_path = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/stud_images/'.$photo->student_photos_path);

							}
							
					
					    }
					    else
					    {
						$photo->student_photos_path = $old_photo->student_photos_path;
						$photo->save(false);
					    }
					    $model->save(false); // not false because it hasn't been validated
					    $this->redirect(array('final_view','id'=>$model->student_transaction_id));
			    		}
	
			      }

		}

		$this->render('update',array(
			'model'=>$model,'info'=>$info,'photo'=>$photo,'address'=>$address,'lang'=>$lang,
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
		/*$dataProvider=new CActiveDataProvider('StudentTransaction');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/

		$model=new StudentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentTransaction']))
			$model->attributes=$_GET['StudentTransaction'];

		$this->render('admin',array(
			'model'=>$model,
		));


	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new StudentTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StudentTransaction']))
			$model->attributes=$_GET['StudentTransaction'];

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
		$model=StudentTransaction::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($models)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='student-transaction-form')
		{
			echo CActiveForm::validate($models);
			Yii::app()->end();
		}
	}
	public function actiongetItemName()
        {
            $data=  AcademicTerm::model()->findAll('academic_term_period_id=:academic_term_period_id',
		 array(':academic_term_period_id'=>(int) $_REQUEST['StudentTransaction']['student_academic_term_period_tran_id']));
                  
            $data=CHtml::listData($data,'academic_term_id','academic_term_name');
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                        array('value'=>$value),CHtml::encode($name),true);
            }
        }
}
