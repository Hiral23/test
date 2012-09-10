<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'studentinfo-form1',
	'enableAjaxValidation'=>true,

)); ?>

<?php 
echo $form->hiddenField($model,'branch',array('value'=>$branch));
echo $form->hiddenField($model,'acdm_period',array('value'=>$acdm_period));
echo Yii::app()->user->getFlash('no_criteria');


?></br>

<p class="note">Select any criteria <span class="required">*</span></p>

<div class="row">
<input type="checkbox" name="stud_info[]" id="student_enroll_no" value="student_enroll_no" />&nbsp;Enrollment Number
</div>
</br>

<div class="row">
<input type="checkbox" name="stud_info[]" id="student_first_name" value="student_first_name" /> &nbsp;First Name
</div>
</br>
	 	
<div class="row">
<input type="checkbox" name="stud_info[]" id="student_middle_name" value="student_middle_name" /> &nbsp;Middle Name
</div>
</br>
	
<div class="row">
<input type="checkbox" name="stud_info[]" id="student_last_name" value="student_last_name" /> &nbsp;Last Name
</div>
</br>

<div class="row">
<input type="checkbox" name="stud_info[]" id="student_gender" value="student_gender" /> &nbsp;Gender
</div>
</br>

<div class="row">
<input type="checkbox" name="stud_info[]" id="student_living_status", value="student_living_status" />&nbsp;Living Stutus 
</div>
</br>

<div class="row">
<input type="checkbox" name="stud_info[]" id="student_email_id_1" value="student_email_id_1" />&nbsp;Email-ID 
</div>
</br>
<div class="row buttons">
	<?php       echo CHtml::button('Submit' , array('class'=>'submit','submit' => array('report/selectedlist')))."</br>";?>
</div>
<?php $this->endWidget(); ?>




