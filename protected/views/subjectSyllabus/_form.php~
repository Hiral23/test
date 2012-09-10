<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subject-syllabus-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

<!--	<div class="row">
		<?php echo $form->labelEx($model,'sub_id'); ?>
		<?php echo $form->textField($model,'sub_id'); ?>
		<?php echo $form->error($model,'sub_id'); ?>
	</div>
-->
	<div class="row">
		<?php echo $form->labelEx($model,'topic_name'); ?>
		<?php echo $form->textField($model,'topic_name',array('size'=>60,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'topic_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'topic_description'); ?>
		<?php echo $form->textArea($model,'topic_description',array('rows'=>6, 'cols'=>50)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'topic_description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hours'); ?>
		<?php echo $form->textField($model,'hours',array('size'=>10,'maxlength'=>10));  ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'hours'); ?>
	</div>

	<!--<div class="row">
		<?php echo $form->labelEx($model,'created_by'); ?>
		<?php echo $form->textField($model,'created_by',array('size'=>40,'maxlength'=>40)); ?>
		<?php echo $form->error($model,'created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'created_date'); ?>
		<?php echo $form->textField($model,'created_date'); ?>
		<?php echo $form->error($model,'created_date'); ?>
	</div>-->

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
