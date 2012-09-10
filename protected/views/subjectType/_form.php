<div class = "test" style="display:none;">
<?php        
if($model->scenario == 'insert')
$name = "Create Subject Types";
else
$name = "Update Subject Types";
$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'mydialog',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>$name,
		'autoOpen'=>true,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>460,
                'resizable'=>false,
                'draggable'=>false,
		'close' => 'js:function(event, ui) { location.href = "'.Yii::app()->createUrl("SubjectType/admin").'"; }'
	),
));
?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subject-type-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_type_name'); ?>
		<?php echo $form->textField($model,'subject_type_name',array('size'=>20,'maxlength'=>20));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_type_name'); ?>
	</div>
<!--
	<div class="row">
		<?php echo $form->labelEx($model,'subject_organization_id'); ?>
		<?php echo $form->dropDownList($model,'subject_organization_id',Organization::items()); ?>
		<?php echo $form->error($model,'subject_organization_id'); ?>
	</div>
-->
	<div class="row">
		<?php echo $form->labelEx($model,'subject_active'); ?>
		<?php echo $form->dropDownList($model,'subject_active',array(1=>'Active',0=>'Inactive'), array('empty' => '-----------Select---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_active'); ?>
	</div>

	<br />

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>
</div>
