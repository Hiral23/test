<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'subject_master_id'); ?>
		<?php echo $form->textField($model,'subject_master_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_name'); ?>
		<?php echo $form->textField($model,'subject_master_name',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_code'); ?>
		<?php echo $form->textField($model,'subject_master_code',array('size'=>15,'maxlength'=>15)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_alias'); ?>
		<?php echo $form->textField($model,'subject_master_alias',array('size'=>15,'maxlength'=>15)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_type_id'); ?>
		<?php echo $form->textField($model,'subject_master_type_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_organization_id'); ?>
		<?php echo $form->textField($model,'subject_master_organization_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_branch_id'); ?>
		<?php echo $form->textField($model,'subject_master_branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_academic_terms_period_id'); ?>
		<?php echo $form->textField($model,'subject_master_academic_terms_period_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_active'); ?>
		<?php echo $form->textField($model,'subject_master_active'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_updated_date'); ?>
		<?php echo $form->textField($model,'subject_master_updated_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'subject_master_updated_user'); ?>
		<?php echo $form->textField($model,'subject_master_updated_user'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->