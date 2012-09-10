<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'fees-payment-transaction-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>
	<?php
$id=$_REQUEST['id'];
$student_name=StudentInfo::model()->findByPk($id)->student_first_name;
?>
<b><?php echo $student_name;?></b>
<div>&nbsp;</div>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'fees_payment_master_id'); ?>
		<?php echo $form->textField($model,'fees_payment_master_id',array('value'=>$FeesMasterDetails->fees_master_name,'disabled'=>true)); ?>
		<?php echo $form->error($model,'fees_payment_master_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($FeesMasterDetails,'fees_organization_id'); ?>
		<?php echo $form->textField($FeesMasterDetails,'fees_organization_id',array('value'=>$FeesMasterDetails->fees_organization_id,'disabled'=>true)); ?>
		<?php echo $form->error($FeesMasterDetails,'fees_organization_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($FeesMasterDetails,'fees_branch_id'); ?>
	        <?php echo $form->textField($FeesMasterDetails,'fees_branch_id',array('value'=>$FeesMasterDetails->fees_branch_id,'disabled'=>true)); ?>
		<?php echo $form->error($FeesMasterDetails,'fees_branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($FeesMasterDetails,'fees_academic_term_id'); ?>
	        <?php echo $form->textField($FeesMasterDetails,'fees_academic_term_id',array('value'=>$FeesMasterDetails->fees_academic_term_id,'disabled'=>true)); ?>
		<?php echo $form->error($FeesMasterDetails,'fees_academic_term_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($FeesMasterDetails,'fees_academic_term_name_id'); ?>
	        <?php echo $form->textField($FeesMasterDetails,'fees_academic_term_name_id',array('value'=>$FeesMasterDetails->fees_academic_term_name_id,'disabled'=>true)); ?>
		<?php echo $form->error($FeesMasterDetails,'fees_academic_term_name_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($FeesMasterDetails,'fees_quota_id'); ?>
	        <?php echo $form->textField($FeesMasterDetails,'fees_quota_id',array('value'=>$FeesMasterDetails->fees_quota_id,'disabled'=>true)); ?>
		<?php echo $form->error($FeesMasterDetails,'fees_quota_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($FeesMasterDetails,'fees_master_total'); ?>
	        <?php echo $form->textField($FeesMasterDetails,'fees_master_total',array('value'=>$FeesMasterDetails->fees_master_total,'disabled'=>true)); ?>
		<?php echo $form->error($FeesMasterDetails,'fees_master_total'); ?>
	</div>

<!--
	<div class="row">
		<?php echo $form->labelEx($model,'fees_payment_method_id'); ?>
		<?php echo $form->textField($model,'fees_payment_method_id'); ?>
		<?php echo $form->error($model,'fees_payment_method_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fees_payment_cash_cheque_id'); ?>
		<?php echo $form->textField($model,'fees_payment_cash_cheque_id'); ?>
		<?php echo $form->error($model,'fees_payment_cash_cheque_id'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'fees_receipt_id'); ?>
		<?php echo $form->textField($model,'fees_receipt_id'); ?>
		<?php echo $form->error($model,'fees_receipt_id'); ?>
	</div>
-->
	<div class="row">
		<?php echo $form->labelEx($model,'fees_payment'); ?>
		<?php echo $form->dropdownList($model,'fees_payment',FeesPaymentType::items()); ?>
		<?php echo $form->error($model,'fees_payment'); ?>
	</div>

<!--
	<div class="row">
		<?php echo $form->labelEx($model,'fees_received_user_id'); ?>
		<?php echo $form->textField($model,'fees_received_user_id'); ?>
		<?php echo $form->error($model,'fees_received_user_id'); ?>
	</div>
-->

<!--
	<div class="row">
		<?php echo $form->labelEx($model,'fees_student_id'); ?>
		<?php echo $form->textField($model,'fees_student_id'); ?>
		<?php echo $form->error($model,'fees_student_id'); ?>
	</div>
-->

	<?php echo $form->hiddenField($model,'fees_master_id',array('value'=>$model->fees_payment_master_id)); ?>
	<?php echo $form->hiddenField($model,'student_id',array('value'=>$_REQUEST['id'])); ?>
	<div class="row buttons">
		<?php echo CHtml::Button('Cash',array('submit' => array('payfeescash','feesid'=>$_REQUEST['id']),'class'=>'submit')); ?>
		<?php echo CHtml::Button('Cheque',array('submit' => array('payfeescheque','feesid'=>$_REQUEST['id']),'class'=>'submit',)); ?>
	</div>
	<div>&nbsp;</div>


<?php $this->endWidget(); ?>

</div><!-- form -->



