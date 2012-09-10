<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'subject_type_id'); ?>
		<?php echo $form->textField($model,'subject_type_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_type_name'); ?>
		<?php echo $form->textField($model,'subject_type_name',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_organization_id'); ?>
		<?php echo $form->textField($model,'subject_organization_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_active'); ?>
		<?php echo $form->textField($model,'subject_active'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_modified_date'); ?>
		<?php echo $form->textField($model,'subject_modified_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_modified_user'); ?>
		<?php echo $form->textField($model,'subject_modified_user'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->