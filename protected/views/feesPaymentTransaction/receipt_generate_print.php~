<?php
$this->breadcrumbs=array(
	'Receipt Generation',
	
);?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'fees-payment-cheque-form',
	'enableAjaxValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'receipt_start_from'); ?>
		<?php echo $form->textField($model,'receipt_start_from'); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'receipt_start_from'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'receipt_end_to'); ?>
		<?php echo $form->textField($model,'receipt_end_to'); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'receipt_end_to'); ?>
	</div>
	
	<div class="row buttons">
		<?php echo CHtml::submitButton('search', array('class'=>'submit'));
			//echo CHtml::button('search',array('class'=>'submit','submit'=>array('')); 
		?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

