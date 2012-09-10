<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'feedback_start_date'); ?>
		<?php echo $form->textField($model,'feedback_start_date'); ?>
	</div>
	<div class="row">
		<?php echo $form->label($model,'feedback_end_date'); ?>
		<?php echo $form->textField($model,'feedback_end_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'feedback_name'); ?>
		<?php echo $form->textField($model,'feedback_name',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'feedback_emp_id'); ?>
		<?php echo $form->textField($model,'feedback_emp_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'feedback_branch_id'); ?>
		<?php echo $form->textField($model,'feedback_branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'feedback_academic_term_id'); ?>
		<?php echo $form->textField($model,'feedback_academic_term_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'feedback_subject_id'); ?>
		<?php echo $form->textField($model,'feedback_subject_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'feedback_department_id'); ?>
		<?php echo $form->textField($model,'feedback_department_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'remark'); ?>
		<?php echo $form->textField($model,'remark',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
