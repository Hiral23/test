<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subject-teaching-schema-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array(
				'validateOnSubmit'=>true,
			      ),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	

	<div class="row">
		<?php echo $form->labelEx($model,'theory_credit'); ?>
		<?php echo $form->textField($model,'theory_credit',array('size'=>5,'maxlength'=>3));  ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'theory_credit'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tutorial_credit'); ?>
		<?php echo $form->textField($model,'tutorial_credit',array('size'=>5,'maxlength'=>3)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'tutorial_credit'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'practical_credit'); ?>
		<?php echo $form->textField($model,'practical_credit',array('size'=>5,'maxlength'=>3)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'practical_credit'); ?>
	</div>
	<!--
	<div class="row">
		<?php echo $form->labelEx($model,'subject_id'); ?>
		<?php echo $form->textField($model,'subject_id'); ?>
		<?php echo $form->error($model,'subject_id'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'created_by'); ?>
		<?php echo $form->textField($model,'created_by'); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'creation_date'); ?>
		<?php echo $form->textField($model,'creation_date'); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'creation_date'); ?>
	</div>
-->
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
