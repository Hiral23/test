<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'pass_no'); ?>
		<?php echo $form->textField($model,'pass_no'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'in_date_time'); ?>
		<?php echo $form->textField($model,'in_date_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'visitor_name'); ?>
		<?php echo $form->textField($model,'visitor_name',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'contact_person'); ?>
		<?php echo $form->textField($model,'contact_person',array('size'=>40,'maxlength'=>40)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'purpose'); ?>
		<?php echo $form->textField($model,'purpose',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'department'); ?>
		<?php echo $form->textField($model,'department',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'address'); ?>
		<?php echo $form->textField($model,'address',array('size'=>60,'maxlength'=>200)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'company_represented'); ?>
		<?php echo $form->textField($model,'company_represented'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'vehicle_no'); ?>
		<?php echo $form->textField($model,'vehicle_no',array('size'=>15,'maxlength'=>15)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'no_of_persons'); ?>
		<?php echo $form->textField($model,'no_of_persons'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'remark'); ?>
		<?php echo $form->textField($model,'remark',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'photo'); ?>
		<?php echo $form->textArea($model,'photo',array('size'=>70,'maxlength'=>250)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'age'); ?>
		<?php echo $form->textField($model,'age'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'gender'); ?>
		<?php echo $form->textField($model,'gender',array('size'=>6,'maxlength'=>6)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'out_time'); ?>
		<?php echo $form->textField($model,'out_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'batch_no'); ?>
		<?php echo $form->textField($model,'batch_no'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'item_carring'); ?>
		<?php echo $form->textField($model,'item_carring'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
