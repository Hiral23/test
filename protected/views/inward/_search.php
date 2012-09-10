<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'invoice_description'); ?>
		<?php echo $form->textField($model,'invoice_description',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'company_name'); ?>
		<?php echo $form->textField($model,'company_name',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'invoice_no_dc'); ?>
		<?php echo $form->textField($model,'invoice_no_dc',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'invoice_date'); ?>
		<?php echo $form->textField($model,'invoice_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'received_date'); ?>
		<?php echo $form->textField($model,'received_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'sender_name'); ?>
		<?php echo $form->textField($model,'sender_name',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'department'); ?>
		<?php echo $form->textField($model,'department'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'photo'); ?>
		<?php echo $form->textField($model,'photo',array('size'=>60,'maxlength'=>250)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'document'); ?>
		<?php echo $form->textField($model,'document',array('size'=>60,'maxlength'=>150)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'document_desc'); ?>
		<?php echo $form->textField($model,'document_desc'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'org_name_id'); ?>
		<?php echo $form->textField($model,'org_name_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'no_of_packets'); ?>
		<?php echo $form->textField($model,'no_of_packets'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'receiver_name'); ?>
		<?php echo $form->textField($model,'receiver_name',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
