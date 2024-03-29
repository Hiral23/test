<?php        
if($model->scenario == 'insert')
$name = "Create Outward Detail";
else
$name = "Update Outward Detail";
$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'mydialog1',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>$name,
		'autoOpen'=>true,
		'modal'=>true,	
                'height'=>'280',
                'width'=>580,
                'resizable'=>false,
                'draggable'=>false,
		'close' => 'js:function(event, ui) { location.href = "'.Yii::app()->createUrl("outward/admin").'"; }'
		
	),
));
?><div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'outward-details-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<!--<div class="row">
		<?php echo $form->labelEx($model,'outward_id'); ?>
		<?php echo $form->textField($model,'outward_id'); ?>
		<?php echo $form->error($model,'outward_id'); ?>
	</div>-->


	<div class="row">
		<?php echo $form->labelEx($model,'item_category_id'); ?>
		<?php //echo $form->dropDownList($model,'item_category_id',ItemCategory::items(), array('empty' => '-----------Select---------')); ?>
<!--<span class="status">&nbsp;</span>-->

		<?php
			echo $form->dropDownList($model,'item_category_id',ItemCategory::items(),
			array(
			'prompt' => '-----------Select---------',
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('OutwardDetails/getItemName'), 
			'update'=>'#OutwardDetails_name', //selector to update
			))); 
			 
			?><span class="status">&nbsp;</span>

		<?php echo $form->error($model,'item_category_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php 
			
			if(isset($model->name))
				echo $form->dropDownList($model,'name', CHtml::listData(InwardDetails::model()->findAll(array('condition'=>'item_category_id='.$model->item_category_id)), 'id', 'name'));
			else
				echo $form->dropDownList($model,'name',array()); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'name'); ?>

	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textField($model,'description',array('size'=>40,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'quantity'); ?>
		<?php echo $form->textField($model,'quantity',array('size'=>12,'maxlength'=>10));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'quantity'); ?>
	</div>

	

<!--	<div class="row">
		<?php echo $form->labelEx($model,'rate'); ?>
		<?php echo $form->textField($model,'rate',array('size'=>12,'maxlength'=>10));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'rate'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'amount'); ?>
		<?php echo $form->textField($model,'amount',array('size'=>12,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'amount'); ?>
	</div>
-->
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><?php $this->endWidget('zii.widgets.jui.CJuiDialog');?><!-- form -->
