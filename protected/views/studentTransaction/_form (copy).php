<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'student-transaction-form',
	'enableAjaxValidation'=>false,
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php

		 $personal_info  =$form->labelEx($info,'student_roll_no'); 
		 $personal_info .=$form->textField($info,'student_roll_no',array('size'=>10,'maxlength'=>10)); 
		 $personal_info .=$form->error($info,'student_roll_no'); 
	
		 $personal_info .=$form->labelEx($info,'student_merit_no'); 
		 $personal_info .=$form->textField($info,'student_merit_no',array('size'=>15,'maxlength'=>15)); 
		 $personal_info .=$form->error($info,'student_merit_no'); 
	
		 $personal_info .=$form->labelEx($info,'student_enroll_no'); 
		 $personal_info .=$form->textField($info,'student_enroll_no',array('size'=>15,'maxlength'=>15));
		 $personal_info .=$form->error($info,'student_enroll_no'); 
	
//		 $personal_info .=$form->labelEx($info,'student_college_id'); 
//		 $personal_info .=$form->textField($info,'student_college_id');
//		 $personal_info .=$form->error($info,'student_college_id'); 
	
		 $personal_info .=$form->labelEx($info,'student_first_name'); 
		 $personal_info .=$form->textField($info,'student_first_name',array('size'=>25,'maxlength'=>25));
		 $personal_info .=$form->error($info,'student_first_name'); 
	
		 $personal_info .=$form->labelEx($info,'student_middle_name'); 
		 $personal_info .=$form->textField($info,'student_middle_name',array('size'=>25,'maxlength'=>25));
		 $personal_info .=$form->error($info,'student_middle_name'); 
	
		 $personal_info .=$form->labelEx($info,'student_last_name'); 
		 $personal_info .=$form->textField($info,'student_last_name',array('size'=>25,'maxlength'=>25)); 
		 $personal_info .=$form->error($info,'student_last_name'); 
	
		 $personal_info .=$form->labelEx($info,'student_father_name'); 
		 $personal_info .=$form->textField($info,'student_father_name',array('size'=>25,'maxlength'=>25));
		 $personal_info .=$form->error($info,'student_father_name');
	
		 $personal_info .=$form->labelEx($info,'student_mother_name'); 
		 $personal_info .=$form->textField($info,'student_mother_name',array('size'=>25,'maxlength'=>25)); 
		 $personal_info .=$form->error($info,'student_mother_name'); 
	
		 $personal_info .=$form->labelEx($info,'student_adm_date'); 
		 $personal_info .=$form->textField($info,'student_adm_date'); 
		 $personal_info .=$form->error($info,'student_adm_date'); 
	
		 $personal_info .=$form->labelEx($info,'student_dob'); 
		 $personal_info .=$form->textField($info,'student_dob'); 
		 $personal_info .=$form->error($info,'student_dob'); 
	
		 $personal_info .=$form->labelEx($info,'student_birthplace'); 
		 $personal_info .=$form->textField($info,'student_birthplace',array('size'=>25,'maxlength'=>25)); 
		 $personal_info .=$form->error($info,'student_birthplace'); 
	
		 $personal_info .=$form->labelEx($info,'student_gender'); 
		 $personal_info .=$form->dropdownList($info,'student_gender',$info->getGenderOptions(), array('empty' => 'Select one of the following...')); 
		 $personal_info .=$form->error($info,'student_gender'); 
	
		 $guardian_info  =$form->labelEx($info,'student_guardian_name');
		 $guardian_info .=$form->textField($info,'student_guardian_name',array('size'=>25,'maxlength'=>25));
		 $guardian_info .=$form->error($info,'student_guardian_name');
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_relation');
		 $guardian_info .=$form->textField($info,'student_guardian_relation',array('size'=>20,'maxlength'=>20));
		 $guardian_info .=$form->error($info,'student_guardian_relation');
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_qualification');
		 $guardian_info .=$form->textField($info,'student_guardian_qualification',array('size'=>50,'maxlength'=>50));
		 $guardian_info .=$form->error($info,'student_guardian_qualification');
		
		 $guardian_info .=$form->labelEx($info,'student_guardian_occupation');
		 $guardian_info .=$form->textField($info,'student_guardian_occupation',array('size'=>50,'maxlength'=>50));
		 $guardian_info .=$form->error($info,'student_guardian_occupation');
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_income'); 
		 $guardian_info .=$form->textField($info,'student_guardian_income',array('size'=>15,'maxlength'=>105)); 
		 $guardian_info .=$form->error($info,'student_guardian_income'); 
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_occupation_address'); 
		 $guardian_info .=$form->textField($info,'student_guardian_occupation_address',array('size'=>50,'maxlength'=>200)); 
		 $guardian_info .=$form->error($info,'student_guardian_occupation_address'); 
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_occupation_city'); 
		 $guardian_info .=$form->dropdownList($info,'student_guardian_occupation_city', City::items(), array('empty' => 'Select one of the following...')); 
		 $guardian_info .=$form->error($info,'student_guardian_occupation_city'); 
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_city_pin'); 
		 $guardian_info .=$form->textField($info,'student_guardian_city_pin',array('size'=>8,'maxlength'=>8)); 
		 $guardian_info .=$form->error($info,'student_guardian_city_pin');
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_home_address'); 
		 $guardian_info .=$form->textField($info,'student_guardian_home_address',array('size'=>40,'maxlength'=>100)); 
		 $guardian_info .=$form->error($info,'student_guardian_home_address'); 
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_phoneno'); 
		 $guardian_info .=$form->textField($info,'student_guardian_phoneno',array('size'=>12,'maxlength'=>12)); 
		 $guardian_info .=$form->error($info,'student_guardian_phoneno'); 
	
		 $guardian_info .=$form->labelEx($info,'student_guardian_mobile');
		 $guardian_info .=$form->textField($info,'student_guardian_mobile',array('size'=>12,'maxlength'=>12));
		 $guardian_info .=$form->error($info,'student_guardian_mobile');
	
		 $other_info  =$form->labelEx($info,'student_email_id_1'); 
		 $other_info .=$form->textField($info,'student_email_id_1',array('size'=>30,'maxlength'=>30)); 
		 $other_info .=$form->error($info,'student_email_id_1'); 
	
		 $other_info .=$form->labelEx($info,'student_email_id_2'); 
		 $other_info .=$form->textField($info,'student_email_id_2',array('size'=>30,'maxlength'=>30));
		 $other_info .=$form->error($info,'student_email_id_2'); 
	
		 $other_info .=$form->labelEx($info,'student_bloodgroup'); 
		 $other_info .=$form->dropdownList($info,'student_bloodgroup',$info->getBloodGroup(), array('empty' => 'Select one of the following...')); 
		 $other_info .=$form->error($info,'student_bloodgroup');
	
 		 $other_info .=$form->labelEx($info,'student_tally_id'); 
		 $other_info .=$form->textField($info,'student_tally_id');
		 $other_info .=$form->error($info,'student_tally_id'); 
/*	
		 $trans_info  =$form->labelEx($model,'student_transaction_user_id'); 
		 $trans_info .=$form->textField($model,'student_transaction_user_id'); 
		 $trans_info .=$form->error($model,'student_transaction_user_id'); 
*/	
		 $trans_info =$form->labelEx($model,'student_transaction_branch_id');
		 $trans_info .=$form->dropDownList($model,'student_transaction_branch_id',Branch::items(), array('empty' => 'Select one of the following...')); 
		 $trans_info .=$form->error($model,'student_transaction_branch_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_category_id');
		 $trans_info .=$form->dropDownList($model,'student_transaction_category_id',Category::items(), array('empty' => 'Select one of the following...'));
		 $trans_info .=$form->error($model,'student_transaction_category_id'); 
	
//		 $trans_info .=$form->labelEx($model,'student_transaction_organization_id'); 
//		 $trans_info .=$form->dropDownList($model,'student_transaction_organization_id',Organization::items(), array('empty' => 'Select one of the following...')); 
//		 $trans_info .=$form->error($model,'student_transaction_organization_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_student_address_id'); 
		 $trans_info .=$form->textField($model,'student_transaction_student_address_id'); 
		 $trans_info .=$form->error($model,'student_transaction_student_address_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_nationality_id'); 
		 $trans_info .=$form->dropDownList($model,'student_transaction_nationality_id',Nationality::items(), array('empty' => 'Select one of the following...')); 
		 $trans_info .=$form->error($model,'student_transaction_nationality_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_quota_id'); 
		 $trans_info .=$form->dropDownList($model,'student_transaction_quota_id',Quota::items(), array('empty' => 'Select one of the following...')); 
		 $trans_info .=$form->error($model,'student_transaction_quota_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_religion_id'); 
		 $trans_info .=$form->dropDownList($model,'student_transaction_religion_id',Religion::items(), array('empty' => 'Select one of the following...')); 
		 $trans_info .=$form->error($model,'student_transaction_religion_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_shift_id'); 
		 $trans_info .=$form->dropDownList($model,'student_transaction_shift_id',Shift::items(), array('empty' => 'Select one of the following...')); 
		 $trans_info .=$form->error($model,'student_transaction_shift_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_languages_known_id'); 
		 $trans_info .=$form->textField($model,'student_transaction_languages_known_id'); 
		 $trans_info .=$form->error($model,'student_transaction_languages_known_id'); 
	
		 $trans_info .= $form->labelEx($model,'student_transaction_student_photos_id'); 
	    	 //$trans_info .= CHtml::form('','post',array('enctype'=>'multipart/form-data')); 
	    	 //$trans_info .= CHtml::activeFileField($photo, 'student_photos_path'); 
	    	 //$trans_info .= CHtml::endForm(); 
		 $trans_info .=$form->textField($model,'student_transaction_student_photos_id'); 
		 $trans_info .=$form->error($model,'student_transaction_student_photos_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_division_id'); 
		 $trans_info .=$form->dropDownList($model,'student_transaction_division_id',Division::items(), array('empty' => 'Select one of the following...')); 
		 $trans_info .=$form->error($model,'student_transaction_division_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_transaction_batch_id'); 
		 $trans_info .=$form->dropDownList($model,'student_transaction_batch_id',Batch::items(), array('empty' => 'Select one of the following...'));
		 $trans_info .=$form->error($model,'student_transaction_batch_id'); 
	
		 $trans_info .=$form->labelEx($model,'student_academic_term_period_tran_id'); 
		 $trans_info .=$form->textField($model,'student_academic_term_period_tran_id');
		 $trans_info .=$form->error($model,'student_academic_term_period_tran_id'); 

?>


<?php
        $this->widget('CTabView',array(
            'tabs'=>array(
                'tab1' => array(
                    'title'=>'Personal Info',
                    'content'=>$personal_info,

                ),
                'tab2' => array(
                    'title'=>'Guardian Info',
                    'content'=>$guardian_info,

                ),
                 'tab3' => array(
                    'title'=>'Other Info',
                    'content'=>$other_info,

                ),
		 'tab4' => array(
                    'title'=>'Transaction Info',
                    'content'=>$trans_info,

                ),
                       
            ),

        ));

?>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
