<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'employee-experience-trans-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array(
			'validateOnSubmit'=>true,
			),
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); 
?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	
	<div class="row">
		<?php echo $form->labelEx($emp_exp,'employee_experience_organization_name'); ?>
		<?php echo $form->textField($emp_exp,'employee_experience_organization_name',array('size'=>50,'maxlength'=>50)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($emp_exp,'employee_experience_organization_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($emp_exp,'employee_experience_designation'); ?>
		<?php echo $form->textField($emp_exp,'employee_experience_designation',array('size'=>25,'maxlength'=>25)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($emp_exp,'employee_experience_designation'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($emp_exp,'employee_experience_from'); ?>
		<?php  $this->widget('zii.widgets.jui.CJuiDatePicker', array(
		    'model'=>$emp_exp, 
		    'attribute'=>'employee_experience_from',
		    'options'=>array(
			'dateFormat'=>'yy-mm-dd',
			'changeYear'=>'true',
			'changeMonth'=>'true',
			'showAnim' =>'slide',

		    ),
			
		));
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($emp_exp,'employee_experience_from'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($emp_exp,'employee_experience_to'); ?>
		<?php  $this->widget('zii.widgets.jui.CJuiDatePicker', array(
		    'model'=>$emp_exp, 
		    'attribute'=>'employee_experience_to',
		    'options'=>array(
			'dateFormat'=>'yy-mm-dd',
			'changeYear'=>'true',
			'changeMonth'=>'true',
			'showAnim' =>'slide',			
		    ),
			
		));
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($emp_exp,'employee_experience_to'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
