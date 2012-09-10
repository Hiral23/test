<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'miscellaneous-fees-payment-cheque-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_master_id'); ?>
		<?php //echo $form->textField($model,'miscellaneous_fees_id'); ?>
		<?php echo $form->dropDownList($model,'miscellaneous_fees_payment_cheque_master_id',CHtml::listData(MiscellaneousFeesMaster::model()->findAll(),'miscellaneous_fees_id','miscellaneous_fees_name'),array('empty' => '-----------Select---------','tabindex'=>1)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_master_id'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_number'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cheque_number',array('size'=>10,'maxlength'=>6,'tabindex'=>2)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_number'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_date'); ?>

		<?php  $this->widget('zii.widgets.jui.CJuiDatePicker', array(
		    'model'=>$model, 
		    'attribute'=>'miscellaneous_fees_payment_cheque_date',
		    'options'=>array(
			'dateFormat'=>'yy-mm-dd',
			'changeYear'=>'true',
			'changeMonth'=>'true',
			'showAnim' =>'slide',
			
			//'showOn'=>'button',
			//'buttonText'=>Yii::t('ui','Select form calendar'),
			///'buttonImage'=>Yii::app()->request->baseUrl.'/images/calendar.png',
			//'buttonImageOnly'=>true,

		    ),
			'htmlOptions'=>array('tabindex'=>3,
			'style'=>'width:110px;vertical-align:top'
		    ),

		));
		?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_bank'); ?>
		<?php echo $form->dropdownList($model,'miscellaneous_fees_payment_cheque_bank', BankMaster::items(),array('empty' => '-----------Select---------','tabindex'=>4)); ?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_bank'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_branch'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cheque_branch',array('size'=>50,'maxlength'=>50,'tabindex'=>5)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_branch'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_amount'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cheque_amount',array('size'=>10,'maxlength'=>6,'tabindex'=>6));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_amount'); ?>
	</div>
<!--
	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_status'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cheque_status'); ?>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_status'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_student_id'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cheque_student_id'); ?>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_student_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'miscellaneous_fees_payment_cheque_receipt_id'); ?>
		<?php echo $form->textField($model,'miscellaneous_fees_payment_cheque_receipt_id'); ?>
		<?php echo $form->error($model,'miscellaneous_fees_payment_cheque_receipt_id'); ?>
	</div>
-->
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit','tabindex'=>7)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
