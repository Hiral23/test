<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'attendence-form',
	'enableAjaxValidation'=>true,
	 'stateful'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); 

$org_id=Yii::app()->user->getState('org_id');
?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="block-error">
		<?php echo Yii::app()->user->getFlash('not-select-attendece'); ?>
	</div>

	
<div class="first-row">
	<div class="row">
		<?php echo $form->labelEx($model,'shift_id'); ?>
		<?php echo $form->dropDownList($model,'shift_id',Shift::items(), array('empty' => '---------------Select-------------','tabindex'=>1)); ?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'shift_id'); ?>
	</div>

	<div class="row">

        <?php echo $form->labelEx($model,'sem_id'); ?>
	<?php
			echo $form->dropDownList($model,'sem_id',AcademicTermPeriod::items(),
			array(
			'prompt' => '---------------Select-------------','tabindex'=>2,
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('Attendence/getItemName'), 
			'update'=>'#Attendence_sem_name_id', //selector to update
			
			))); 
			 
			?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'sem_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'sem_name_id'); ?>
	        <?php //echo $form->dropDownList($model,'student_academic_term_name_id',array()); ?>
		<?php 
			
			if(isset($model->sem_name_id))
				echo $form->dropDownList($model,'sem_name_id', CHtml::listData(AcademicTerm::model()->findAll(array('condition'=>'academic_term_id='.$model->sem_name_id)), 'academic_term_id', 'academic_term_name'));
			else
				echo $form->dropDownList($model,'sem_name_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>3)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'sem_name_id'); ?>
	</div>	

</div>
<div class="first-row">

	<div class="row">
		<?php echo $form->labelEx($model,'branch_id'); ?>
		<?php
			echo $form->dropDownList($model,'branch_id',
				CHtml::listData(Branch::model()->findAll(array('condition'=>'branch_organization_id='.$org_id)),'branch_id','branch_name'),
				array(
				'prompt' => '---------------Select-------------','tabindex'=>4,
				'ajax' => array(
				'type'=>'POST', 
				'url'=>CController::createUrl('Attendence/getItemName1'),	 	
				//'update'=>'#Attendence_div_id', //selector to update
				
				'dataType'=>'json',
		        	'success'=>'function(data) {

		                  $("#Attendence_div_id").html(data.div);
				  $("#Attendence_sub_id").html(data.sub);
				  $("#Attendence_batch").html(data.batch);
				
		                }',
				)));
			 
			 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'div_id'); ?>
		<?php //echo $form->dropDownList($model,'div_id',Division::items(), array('empty' => '---------------Select-------------','tabindex'=>5)); ?>
		<?php 
			
			if(isset($model->div_id))
				echo $form->dropDownList($model,'div_id', CHtml::listData(Division::model()->findAll(array('condition'=>'branch_id='.$model->branch_id.' and division_organization_id='.$org_id)), 'division_id', 'division_code'));
			else
				//echo $form->dropDownList($model,'div_id',array(),array('prompt' => '---------------Select-------------','tabindex'=>5));
				echo $form->dropDownList($model,'div_id',array(),
			array(
			'prompt' => '---------------Select-------------','tabindex'=>5,
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('Attendence/getBatch'), 
			'update'=>'#Attendence_batch', //selector to update
			
			))); 
			  
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'div_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'sub_id'); ?>
		<?php //echo $form->dropDownList($model,'sub_id',SubjectMaster::items(), array('empty' => '---------------Select-------------','tabindex'=>6)); ?>
		<?php 
			
			if(isset($model->sub_id))
				echo $form->dropDownList($model,'sub_id', CHtml::listData(SubjectMaster::model()->findAll(array('condition'=>'subject_master_branch_id='.$model->branch_id.' and subject_master_organization_id='.$org_id)), 'subject_master_id', 'subject_master_name'));
			else
				echo $form->dropDownList($model,'sub_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>6)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'sub_id'); ?>
	</div>

</div>
<div class="first-row" >
	<div class="row">
        <?php echo $form->labelEx($model,'batch'); ?>
        <?php //echo $form->dropDownList($model,'batch_id',Batch::items(), array('empty' => '---------------Select-------------','tabindex'=>7)); ?>
	<?php 
			
			if(isset($model->batch))
				echo $form->dropDownList($model,'batch', CHtml::listData(Batch::model()->findAll(array('condition'=>'div_id='.$model->div_id.' and batch_organization_id='.$org_id)), 'batch_id', 'batch_name'));
			else
				echo $form->dropDownList($model,'batch',array('prompt' => '---------------Select-------------'),array('tabindex'=>7)); 
	?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'batch'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'employee_id'); ?>
		<?php	
		//$faculty = array();

$facultytablelist = EmployeeTransaction::model()->findAll();

//$i=0;
//$facidname=array();

foreach($facultytablelist as $f)
{
	//echo $f['employee_transaction_employee_id'];
		
	
	$res1=EmployeeTransaction::model()->findByAttributes(array('employee_transaction_employee_id'=>$f['employee_transaction_employee_id']));
//	echo $res1[''];
	$temp1=EmployeeInfo::model()->findByAttributes(array('employee_type'=>1,'employee_id'=>$f['employee_transaction_employee_id']));
	if($temp1)
	{
	$temp=$res1['employee_transaction_id'];
	$facname[$temp]=$temp1['employee_first_name'];
	}
	
}

echo $form->dropDownList($model,'employee_id', $facname, array('empty'=>'---------------Select-------------'));
		?>
		<?php echo $form->error($model,'employee_id'); ?>
	</div>
	

	
		
	<!--<div class="row">
		<?php echo $form->labelEx($model,'timetable_id'); ?>
		<?php echo $form->textField($model,'timetable_id'); ?>
		<?php echo $form->error($model,'timetable_id'); ?>
	</div> -->
<?php // var_dump($row1); ?>
	  <div class="row">
	  <?php 
		$date = date('Y/m/d');		
		echo $form->labelEx($model,'attendence_date'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',
		    array(
			'model'=>$model,
			'attribute'=>'attendence_date',
			'language' => 'en',
			
			'options' => array(
			    'dateFormat'=>'yy-mm-dd',
			    'changeMonth' => 'true',
			    'changeYear' => 'true',
			    'duration'=>'fast',
			    'showAnim' =>'slide',
			//	'maxDate'=> '0',
			//	'minDate'=>'0',
			),
			'htmlOptions'=>array('tabindex'=>8,
			'style'=>'height:18px;
			    padding-left: 4px;width:168px;',
			'value'=> date('Y-m-d'),

			)
		    )
		);
		 
	?>
	<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'attendence_date'); ?>
	</div> 

	
</div>
	<div class="row buttons">
		<?php echo CHtml::submitButton('Search', array('class'=>'submit','name'=>'search','tabindex'=>9)); ?>
	</div>

<?php $this->endWidget(); ?>
</div>

<?php if(!empty($row1)) {?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'attendence-form',
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
	//'enableAjaxValidation'=>false,
	 'stateful'=>true,
	//'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>


<?php 
			$count = 0;
			$count = count($row1);
			
			for($i=0;$i<count($row1);$i++)
			{
			   $stud_id = $row1[$i]['student_transaction_student_id'];
			   $name_lable = StudentInfo::model()->findByPk($row1[$i]['student_transaction_student_id'])->student_first_name;
?>
		<div class="row">
			<?php echo $form->labelEx($model,$name_lable); ?>		   			
			<?php echo $form->checkBox($model, 'st_id[]', array('value'=>$stud_id, 'uncheckValue'=>null,'checked'=>'checked')); ?>
                        <?php //echo CHtml::activeCheckBox($model,'stud_id[]'.$i,array('checked'=>false,'value'=>$stud_id,'uncheckValue' => null)); ?>
			<?php echo $form->error($model,'stud_id'); ?>
		</div>

<?php  			
}

?>
<div class="row buttons">
		<?php 
			 //echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
		<?php echo CHtml::submitButton('save', array('class'=>'submit','name'=>'save','tabindex'=>10)); 
			 ?>
	</div>
<?php $this->endWidget(); ?>

</div>
<?php }?>







