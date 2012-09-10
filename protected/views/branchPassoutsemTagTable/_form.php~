<div class = "test" style="display:none;">
<?php        
if($model->scenario == 'insert')
$name = "Create Branch Tags";
else
$name = "Update Branch Tags";
$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'mydialog',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>$name,
		'autoOpen'=>true,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>440,
                'resizable'=>false,
                'draggable'=>false,
		'close' => 'js:function(event, ui) { location.href = "'.Yii::app()->createUrl("BranchPassoutsemTagTable/admin").'"; }'
	),
));
?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'branch-passoutsem-tag-table-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'branch_tag_name'); ?>
		<?php echo $form->textField($model,'branch_tag_name',array('size'=>20,'maxlength'=>20)); ?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'branch_tag_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pass_out_sem'); ?>
		<?php echo $form->textField($model,'pass_out_sem'); ?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'pass_out_sem'); ?>
	</div>
	<!--
	<div class="row">
		<?php echo $form->labelEx($model,'created_by'); ?>
		<?php echo $form->textField($model,'created_by'); ?>
		<?php echo $form->error($model,'created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'creation_date'); ?>
		<?php echo $form->textField($model,'creation_date'); ?>
		<?php echo $form->error($model,'creation_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'organization_id'); ?>
		<?php echo $form->textField($model,'organization_id'); ?>
		<?php echo $form->error($model,'organization_id'); ?>
	</div>-->

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>
</div>
