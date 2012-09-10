<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'outward-form',
	'enableAjaxValidation'=>true,
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
	 'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'invoice_description'); ?>
		<?php echo $form->textField($model,'invoice_description',array('size'=>50,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'invoice_description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'company_name'); ?>
		<?php echo $form->textField($model,'company_name',array('size'=>30,'maxlength'=>30)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'company_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'invoice_no_dc'); ?>
		<?php echo $form->textField($model,'invoice_no_dc',array('size'=>10,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'invoice_no_dc'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'invoice_date'); ?>
		<?php echo Yii::app()->dateFormatter->formatDateTime(time(), 'short');?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'invoice_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'receiver_name'); ?>
		<?php echo $form->textField($model,'receiver_name',array('size'=>20,'maxlength'=>20)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'receiver_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'department'); ?>
		<?php echo $form->dropDownList($model,'department',Department::items(), array('empty' => '-----------Select---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'department'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'photo'); ?>
		<?php echo CHtml::activeFileField($model, 'photo'); ?>
		<?php CHtml::endForm(); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'document'); ?>
		<?php echo CHtml::activeFileField($model, 'document');?><span class="status">&nbsp;</span>
		<div class="hint"><b>Hint:-</b>&nbsp;Upload Only Pdf, Txt, Doc Type Document</div>
		<?php CHtml::endForm(); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'document_desc'); ?>
		<?php echo $form->textField($model,'document_desc',array('size'=>60,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'document_desc'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'no_of_packets'); ?>
		<?php echo $form->textField($model,'no_of_packets',array('size'=>20,'maxlength'=>10));  ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'no_of_packets'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'sender_name'); ?>
		<?php echo $form->textField($model,'sender_name',array('size'=>20,'maxlength'=>20)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'sender_name'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
