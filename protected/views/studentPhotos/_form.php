<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'student-photos-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'student_photos_desc'); ?>
		<?php echo $form->textField($model,'student_photos_desc',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'student_photos_desc'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'student_photos_path'); ?>
		<?php echo $form->textField($model,'student_photos_path',array('size'=>60,'maxlength'=>150)); ?>
		<?php echo $form->error($model,'student_photos_path'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->