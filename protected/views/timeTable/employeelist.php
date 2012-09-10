<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'time-table-form',
	'enableAjaxValidation'=>true,
	
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php  echo $form->errorSummary($model); ?>
	<div class="block-error">
		<?php echo Yii::app()->user->getFlash('not-select-employee'); ?>
</div>

	<div class="row">
		<?php echo $form->labelEx($model,'faculty_id'); ?>
		<?php echo $form->dropDownList($model,'faculty_id',EmployeeInfo::items(), array('empty' => '----------- Select -----------','tabindex'=>1));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'faculty_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::button('Show' , array('submit' => array('timeTable/Employeelist','id'=>$_REQUEST['id']),'class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
