<?php

class EmployeeTransactionController extends RController
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
				'actions'=>array('index','new_view','final_view'),
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

		$emp_doc=new EmployeeDocsTrans('mysearch');
		$emp_doc->unsetAttributes();  // clear any default values
		if(isset($_GET['EmployeeDocsTrans']))
			$emp_doc->attributes=$_GET['EmployeeDocsTrans'];

		$emp_exp=new EmployeeExperienceTrans('mysearch');
		$emp_exp->unsetAttributes();  // clear any default values
		if(isset($_GET['EmployeeExperienceTrans']))
			$emp_exp->attributes=$_GET['EmployeeDocsTrans'];

		$emp_record=new EmployeeAcademicRecordTrans('mysearch');
		$emp_record->unsetAttributes();  // clear any default values

		if(isset($_GET['EmployeeAcademicRecordTrans']))
			$emp_record->attributes=$_GET['EmployeeAcademicRecordTrans'];


		$this->render('final_view',array(
			'model'=>$this->loadModel($id),'emp_doc'=>$emp_doc,'emp_exp'=>$emp_exp,'emp_record'=>$emp_record,
		));
		
	}


	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new EmployeeTransaction;
		$info=new EmployeeInfo;
		$user =new User;
		$photo =new EmployeePhotos;
		$address=new EmployeeAddress;
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
			    			f.EmployeeAddress_employee_address_p_line1.value = f.EmployeeAddress_employee_address_c_line1.value;
			    			f.EmployeeAddress_employee_address_p_line2.value = f.EmployeeAddress_employee_address_c_line2.value;
			    			f.EmployeeAddress_employee_address_p_pincode.value = f.EmployeeAddress_employee_address_c_pincode.value;


						f.EmployeeAddress_employee_address_p_city.selectedIndex = f.EmployeeAddress_employee_address_c_city.selectedIndex;

						f.EmployeeAddress_employee_address_p_state.selectedIndex = f.EmployeeAddress_employee_address_c_state.selectedIndex;

						f.EmployeeAddress_employee_address_p_country.selectedIndex = f.EmployeeAddress_employee_address_c_country.selectedIndex;

			   		}

				};
			", CClientScript::POS_END);


		if(isset($_POST['EmployeeTransaction'], $_POST['EmployeeInfo'], $_POST['EmployeePhotos'], $_POST['EmployeeAddress'],$_POST['LanguagesKnown']))
		{
			$model->attributes=$_POST['EmployeeTransaction'];
			$info->attributes=$_POST['EmployeeInfo'];
			$photo->attributes=$_POST['EmployeePhotos'];
			$address->attributes=$_POST['EmployeeAddress'];
			$lang->attributes=$_POST['LanguagesKnown'];
		

			$info->employee_created_by = Yii::app()->user->id;
            		$info->employee_creation_date = new CDbExpression('NOW()');

			$photo->employee_photos_path = CUploadedFile::getInstance($photo,'employee_photos_path');

			if($photo->employee_photos_path == null)
			{
				
				$valid_photo = true;

			}
			else
			{
				$valid_photo = $photo->validate();
			}

			$valid  = $info->validate();
			//$valid_photo = $photo->validate();
			$valid_add = $address->validate();
			$valid_lang = $lang->validate();
			$valid1 = $model->validate();
		

			if($valid && $valid1 && $valid_add && $valid_lang && $valid_photo)  
			    {
				  $user->user_organization_email_id = $info->employee_private_email;
				  $user->user_password =  md5($info->employee_private_email.$info->employee_private_email);
				  $user->user_created_by =  Yii::app()->user->id;
				  $user->user_creation_date = new CDbExpression('NOW()');
				  $user->user_type = "employee";
				  
				  if($info->save(false))  
				  {  
				        $user->save(false);
					$address->save(false);
					$lang->save(false);
					
					$photo->employee_photos_path = CUploadedFile::getInstance($photo,'employee_photos_path');

					if($photo->employee_photos_path != null)
					{
						$newfname;
						$ext= substr(strrchr($photo->employee_photos_path,'.'),1);
						if($ext!=null)
						{				
							$newfname = $info->employee_id . '_' . $info->employee_first_name.'.'.$ext;
							$photo->employee_photos_path->saveAs(Yii::getPathOfAlias('webroot').'/emp_images/' .$photo->employee_photos_path = $newfname);
						}
								
						
						$photo->save(false);
						Yii::import("ext.EPhpThumb.EPhpThumb");
						$thumb=new EPhpThumb();
						$thumb->init(); //this is needed
						$thumb->create(Yii::getPathOfAlias('webroot').'/emp_images/'.$photo->employee_photos_path = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/emp_images/'.$photo->employee_photos_path);
					}
					else
					{
						$photo->employee_photos_path = "no_image" ;
						$photo->save(false);
					}
					$model->employee_transaction_employee_id = $info->employee_id;
					$model->employee_transaction_user_id = $user->user_id;
					$model->employee_transaction_emp_photos_id = $photo->employee_photos_id;
			                $model->employee_transaction_emp_address_id = $address->employee_address_id;
					$model->employee_transaction_languages_known_id=$lang->languages_known_id;
					$model->employee_transaction_organization_id = Yii::app()->user->getState('org_id');

//				        $valid1  = $model->validate();
//					if($valid1)
			        	$model->save(); // not false because it hasn't been validated

					// Assign company to user...

					$ass_comp->assign_user_id = $user->user_id;
					$ass_comp->assign_role_id = 3;
					$ass_comp->assign_org_id = Yii::app()->user->getState('org_id');
					$ass_comp->assign_created_by = Yii::app()->user->id;
					$ass_comp->assign_creation_date = new CDbExpression('NOW()');
					$ass_comp->save();

				        $this->redirect(array('final_view','id'=>$model->employee_transaction_id));

	 			  }

			    }
		}

			$this->render('create',array(
			'model'=>$model,'info'=>$info,'photo'=>$photo,'address'=>$address,'lang'=>$lang,
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

		$info = EmployeeInfo::model()->findByPk($model->employee_transaction_employee_id);

		$address = EmployeeAddress::model()->findByPk($model->employee_transaction_emp_address_id);
		
		$photo = EmployeePhotos::model()->findByPk($model->employee_transaction_emp_photos_id);

		$old_photo = EmployeePhotos::model()->findByPk($model->employee_transaction_emp_photos_id);

		$lang = LanguagesKnown::model()->findByPk($model->employee_transaction_languages_known_id);

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation(array($info,$model,$photo,$address,$lang));

		// ADD JAVASCRIPT (CLIENTSCRIPT TO DISPLAY CURRENT ADDRESS AS PERMENT ADDRESS)

		 Yii::app()->clientScript->registerScript("address-script", "
			    function FillAddress(f)
				{
					
					if(f.address.checked == true)
					{
			    			f.EmployeeAddress_employee_address_p_line1.value = f.EmployeeAddress_employee_address_c_line1.value;
			    			f.EmployeeAddress_employee_address_p_line2.value = f.EmployeeAddress_employee_address_c_line2.value;
			    			f.EmployeeAddress_employee_address_c_pincode.value = f.EmployeeAddress_employee_address_c_pincode.value;


						f.EmployeeAddress_employee_address_p_city.selectedIndex = f.EmployeeAddress_employee_address_c_city.selectedIndex;

						f.EmployeeAddress_employee_address_p_state.selectedIndex = f.EmployeeAddress_employee_address_c_state.selectedIndex;

						f.EmployeeAddress_employee_address_p_country.selectedIndex = f.EmployeeAddress_employee_address_c_country.selectedIndex;

			   		}

				};
			", CClientScript::POS_END);



		if(isset($_POST['EmployeeTransaction'], $_POST['EmployeeInfo'], $_POST['EmployeePhotos'], $_POST['EmployeeAddress'],$_POST['LanguagesKnown']))
		{
			$model->attributes=$_POST['EmployeeTransaction'];
			$info->attributes=$_POST['EmployeeInfo'];
			$photo->attributes=$_POST['EmployeePhotos'];
		        $address->attributes=$_POST['EmployeeAddress'];
			$lang->attributes=$_POST['LanguagesKnown'];

			$photo->employee_photos_path = CUploadedFile::getInstance($photo,'employee_photos_path');

			if($photo->employee_photos_path == null)
			{
				$valid_photo = true;

			}
			else
			{
				$valid_photo = $photo->validate();
			}

			$valid  = $info->validate();
			$valid_add = $address->validate();
			$valid_lang = $lang->validate();
			$valid1 = $model->validate();

			if($valid && $valid1 && $valid_add && $valid_lang && $valid_photo)  
                        {

				  if($info->save(false))  
				  {  
					    $model->employee_transaction_employee_id = $info->employee_id;
			                    $address->save(false);
					    $lang->save(false);
					
					 $photo->employee_photos_path = CUploadedFile::getInstance($photo,'employee_photos_path');
					if($photo->employee_photos_path != null)
					{

						$newfname;
						$ext= substr(strrchr($photo->employee_photos_path,'.'),1);
						if($ext!=null)
						{				
							$newfname = $info->employee_id . '_' . $info->employee_first_name.'.'.$ext;
							$photo->employee_photos_path->saveAs(Yii::getPathOfAlias('webroot').'/emp_images/' .$photo->employee_photos_path = $newfname);
										
							$photo->save();
							Yii::import("ext.EPhpThumb.EPhpThumb");
							$thumb=new EPhpThumb();
							$thumb->init(); //this is needed
							$thumb->create(Yii::getPathOfAlias('webroot').'/emp_images/'.$photo->employee_photos_path = $newfname)->resize(100,150)->save(Yii::getPathOfAlias('webroot').'/emp_images/'.$photo->employee_photos_path);
						
						}

					}
					else
					{
						$photo->employee_photos_path = $old_photo->employee_photos_path;
						$photo->save();
					}
					
					    $model->save(); // not false because it hasn't been validated
                            		    $this->redirect(array('final_view','id'=>$model->employee_transaction_id));

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
/*		$dataProvider=new CActiveDataProvider('EmployeeTransaction',array(
		    'criteria'=>array(
		    'condition'=>'employee_transaction_organization_id='.Yii::app()->user->getState('org_id')),

		));
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/

		$model=new EmployeeTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['EmployeeTransaction']))
			$model->attributes=$_GET['EmployeeTransaction'];

		$this->render('admin',array(
			'model'=>$model,
		));


	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new EmployeeTransaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['EmployeeTransaction']))
			$model->attributes=$_GET['EmployeeTransaction'];

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
		$model=EmployeeTransaction::model()->findByPk((int)$id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='employee-transaction-form')
		{
			echo CActiveForm::validate($models);
			Yii::app()->end();
		}
	}
}
