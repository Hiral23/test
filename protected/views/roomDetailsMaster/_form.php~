
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'room-details-master-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'room_name'); ?>
		<?php echo $form->textField($model,'room_name',array('size'=>20,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'room_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'location'); ?>
		<?php echo $form->textField($model,'location',array('size'=>20,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'location'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'seat_capacity'); ?>
		<?php echo $form->textField($model,'seat_capacity',array('size'=>20,'maxlength'=>30)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'seat_capacity'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'room_category'); ?>
		<?php echo $form->dropDownList($model,'room_category',CHtml::listData(RoomCategory::model()->findAll(array('condition'=>'room_category_organization_id='.Yii::app()->user->getState('org_id'))),'id','category_name'));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'room_category'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'no_of_banches'); ?>
		<?php echo $form->textField($model,'no_of_banches',array('size'=>20,'maxlength'=>30)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'no_of_banches'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'remarks'); ?>
		<?php echo $form->textArea($model,'remarks',array('rows'=>3, 'cols'=>50)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'remarks'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->


</div>
