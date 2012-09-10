<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'teaching_aids_id'); ?>
		<?php echo $form->textField($model,'teaching_aids_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'teaching_aids_name'); ?>
		<?php echo $form->textField($model,'teaching_aids_name',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'teaching_aids_alias'); ?>
		<?php echo $form->textField($model,'teaching_aids_alias',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'remarks'); ?>
		<?php echo $form->textField($model,'remarks',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'teaching_aids_created_by'); ?>
		<?php echo $form->textField($model,'teaching_aids_created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'teaching_aids_created_date'); ?>
		<?php echo $form->textField($model,'teaching_aids_created_date'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->