<?php        

if($model->inward_id==null)
{
	$var=$_REQUEST['id'];
}
else
{
	$var=$model->inward_id;
}
if($model->scenario == 'insert')
$name = "Create Inward Detail";
else
$name = "Update Inward Detail";
$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'mydialog',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>$name,
		'autoOpen'=>true,
		'modal'=>true,	
                'height'=>'400',
                'width'=>600,
                'resizable'=>false,
                'draggable'=>false,
		'close' => 'js:function(event, ui) { location.href = "'.Yii::app()->createUrl("inward/new_view",array("id" => $var)).'"; }'
		
	),
));
//echo $model->inward_id;
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'inward-details-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<!--<div class="row">
		<?php echo $form->labelEx($model,'inward_id'); ?>
		<?php echo $form->textField($model,'inward_id'); ?>
		<?php echo $form->error($model,'inward_id'); ?>
	</div>-->

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>20,'maxlength'=>20)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textField($model,'description',array('size'=>40,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'quantity'); ?>
		<?php echo $form->textField($model,'quantity',array('size'=>18,'maxlength'=>10));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'quantity'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'item_category_id'); ?>
		<?php echo $form->dropDownList($model,'item_category_id',ItemCategory::items(), array('empty' => '-----------Select---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'item_category_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'rate'); ?>
		<?php echo $form->textField($model,'rate',array('size'=>18,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'rate'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'amount'); ?>
		<?php echo $form->textField($model,'amount',array('size'=>18,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'amount'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><?php $this->endWidget('zii.widgets.jui.CJuiDialog');?><!-- form -->
