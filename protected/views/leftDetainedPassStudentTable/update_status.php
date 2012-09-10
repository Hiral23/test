<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'left-detained-pass-student-table-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($status_model,'status_id'); ?>
		<?php echo $form->dropDownList($status_model,'status_id',
				CHtml::listData(Studentstatusmaster::model()->findAll(),'id','status_name')); ?>
		<?php echo $form->error($status_model,'status_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($status_model->isNewRecord ? 'Create' : 'Save',array('name' => 'update_status_student','class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
