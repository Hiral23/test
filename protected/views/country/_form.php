<div class = "test" style="display:none;">
<?php        
if($model->scenario == 'insert')
$name = "Create Country";
else
$name = "Update Country";
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
		'close' => 'js:function(event, ui) { location.href = "'.Yii::app()->createUrl("country/admin").'"; }'
	),
));
?>



<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'country-form',
	'enableAjaxValidation'=>true,
	 'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->error($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>40,'maxlength'=>60)); ?><span class="status">&nbsp;</span>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>
</div>
