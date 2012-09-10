<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'employee_attendence_id'); ?>
		<?php echo $form->textField($model,'employee_attendence_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'employee_id'); ?>
		<?php echo $form->textField($model,'employee_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'date'); ?>
		<?php echo $form->textField($model,'date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time1'); ?>
		<?php echo $form->textField($model,'time1'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time2'); ?>
		<?php echo $form->textField($model,'time2'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time3'); ?>
		<?php echo $form->textField($model,'time3'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time4'); ?>
		<?php echo $form->textField($model,'time4'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time5'); ?>
		<?php echo $form->textField($model,'time5'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time6'); ?>
		<?php echo $form->textField($model,'time6'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time7'); ?>
		<?php echo $form->textField($model,'time7'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time8'); ?>
		<?php echo $form->textField($model,'time8'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time9'); ?>
		<?php echo $form->textField($model,'time9'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'time10'); ?>
		<?php echo $form->textField($model,'time10'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'total_hour'); ?>
		<?php echo $form->textField($model,'total_hour'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'overtime_hour'); ?>
		<?php echo $form->textField($model,'overtime_hour'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->