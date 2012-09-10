<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'mydialog',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Cheque Details',
		'autoOpen'=>true,
		'modal'=>true,	
                'height'=>300,
                'width'=>400,
                'resizable'=>false,
                'draggable'=>false,
		'close' => 'js:function(event, ui) { location.href = "'.Yii::app()->createUrl("feesPaymentTransaction/create/".$_REQUEST['feesid']).'"; }'
	),
));
?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'fees-payment-cheque-form',
	'enableAjaxValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($pay_cheque); ?>

	<div class="row">
		<?php echo $form->labelEx($pay_cheque,'fees_payment_cheque_number'); ?>
		<?php echo $form->textField($pay_cheque,'fees_payment_cheque_number'); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($pay_cheque,'fees_payment_cheque_number'); ?>
	</div>


		<div class="row">
		<?php echo $form->labelEx($pay_cheque,'fees_payment_cheque_date'); ?>
		<?php  $this->widget('zii.widgets.jui.CJuiDatePicker', array(
		    'model'=>$pay_cheque, 
		    'attribute'=>'fees_payment_cheque_date',
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
			'htmlOptions'=>array(
			'style'=>'width:110px;vertical-align:top'
		    ),

		));
		?><span class="status">&nbsp;</span>
		<?php //echo $form->error($pay_cheque,'fees_payment_cheque_date'); ?>
		</div>


	<div class="row">
		<?php echo $form->labelEx($pay_cheque,'fees_payment_cheque_bank'); ?>
		<?php echo $form->dropdownList($pay_cheque,'fees_payment_cheque_bank', BankMaster::items(),array('empty' => '-----------Select---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($pay_cheque,'fees_payment_cheque_bank'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($pay_cheque,'fees_payment_cheque_branch'); ?>
		<?php echo $form->textField($pay_cheque,'fees_payment_cheque_branch'); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($pay_cheque,'fees_payment_cheque_branch'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($pay_cheque,'fees_payment_cheque_amount'); ?>
		<?php echo $form->textField($pay_cheque,'fees_payment_cheque_amount'); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($pay_cheque,'fees_payment_cheque_amount'); ?>
	</div>
	
<!--
	<div class="row">
		<?php echo $form->labelEx($pay_cheque,'fees_payment_cheque_status'); ?>
		<?php echo $form->textField($pay_cheque,'fees_payment_cheque_status'); ?>
		<?php echo $form->error($pay_cheque,'fees_payment_cheque_status'); ?>
	</div>
-->
	<div class="row buttons">
		<?php echo CHtml::submitButton($pay_cheque->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>
