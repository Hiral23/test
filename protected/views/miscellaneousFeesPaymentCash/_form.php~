<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'miscellaneous-fees-payment-cash-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cash_master_id'); ?>
		<?php //echo $form->textField($model,'miscellaneous_fees_id'); ?>
		<?php echo $form->dropDownList($model,'miscellaneous_fees_payment_cash_master_id',CHtml::listData(MiscellaneousFeesMaster::model()->findAll(),'miscellaneous_fees_id','miscellaneous_fees_name'),array('empty' => '-----------Select---------','tabindex'=>3)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cash_master_id'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cash_amount'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cash_amount',array('size'=>20,'maxlength'=>7)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cash_amount'); ?>
	</div>
<!--
	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cash_student_id'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cash_student_id'); ?>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cash_student_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cash_receipt_id'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cash_receipt_id'); ?>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cash_receipt_id'); ?>
	</div>
-->
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
