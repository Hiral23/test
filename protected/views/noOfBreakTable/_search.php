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
		<?php echo $form->label($model,'timetable_id'); ?>
		<?php echo $form->textField($model,'timetable_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'day'); ?>
		<?php echo $form->textField($model,'day'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'after_lec_break'); ?>
		<?php echo $form->textField($model,'after_lec_break'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'branch_id'); ?>
		<?php echo $form->textField($model,'branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'div_id'); ?>
		<?php echo $form->textField($model,'div_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'acdm_period_id'); ?>
		<?php echo $form->textField($model,'acdm_period_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'acdm_name_id'); ?>
		<?php echo $form->textField($model,'acdm_name_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->