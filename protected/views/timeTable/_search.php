<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'timetable_id'); ?>
		<?php echo $form->textField($model,'timetable_id'); ?>
	</div>


	<div class="row">
		<?php echo $form->label($model,'clg_start_time'); ?>
		<?php echo $form->textField($model,'clg_start_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'timetable_name'); ?>
		<?php echo $form->textField($model,'timetable_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'timetable_branch_id'); ?>
		<?php echo $form->textField($model,'timetable_branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'timetable_acdm_term_period_id'); ?>
		<?php echo $form->textField($model,'timetable_acdm_term_period_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'timetable_acdm_term_name_id'); ?>
		<?php echo $form->textField($model,'timetable_acdm_term_name_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
