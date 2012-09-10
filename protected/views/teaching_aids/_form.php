<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'teaching-aids-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'teaching_aids_name'); ?>
		<?php echo $form->textField($model,'teaching_aids_name',array('size'=>50,'maxlength'=>50)); ?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'teaching_aids_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'teaching_aids_alias'); ?>
		<?php echo $form->textField($model,'teaching_aids_alias',array('size'=>10,'maxlength'=>10)); ?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'teaching_aids_alias'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'remarks'); ?>
		<?php echo $form->textField($model,'remarks',array('size'=>50,'maxlength'=>50)); ?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'remarks'); ?>
	</div>

	<!--<div class="row">
		<?php echo $form->labelEx($model,'teaching_aids_created_by'); ?>
		<?php echo $form->textField($model,'teaching_aids_created_by'); ?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'teaching_aids_created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'teaching_aids_created_date'); ?>
		<?php echo $form->textField($model,'teaching_aids_created_date'); ?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'teaching_aids_created_date'); ?>
	</div>-->

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
