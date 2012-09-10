<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'visitor-pass-form',
	'enableAjaxValidation'=>true,
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
	 'clientOptions'=>array('validateOnSubmit'=>true),

)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'in_date_time'); ?>
<!--		<?php Yii::import('application.extensions.CJuiDateTimePicker.CJuiDateTimePicker');
		 $this->widget('CJuiDateTimePicker', array(
		    'model'=>$model, 
		    'attribute'=>'in_date_time',
		    'mode'=>'time', //use "time","date" or "datetime" (default)
		    'options'=>array(),

		));
		?><span class="status">&nbsp;</span>
-->
		<?php echo Yii::app()->dateFormatter->formatDateTime(time(), 'short');?>
		<?php echo $form->error($model,'in_date_time'); ?>

	</div>
<br>
	<div class="row">
		<?php echo $form->labelEx($model,'visitor_name'); ?>
		<?php echo $form->textField($model,'visitor_name',array('size'=>40,'maxlength'=>25)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'visitor_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'contact_person'); ?>
		<?php echo $form->textField($model,'contact_person',array('size'=>40,'maxlength'=>40)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'contact_person'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'purpose'); ?>
		<?php echo $form->textField($model,'purpose',array('size'=>40,'maxlength'=>50)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'purpose'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'department'); ?>
		<?php echo $form->dropDownList($model,'department',Department :: items(),array('empty' => '----------Select--------')); ?><span class="status">&nbsp;</span>
		<?php //echo $form->textField($model,'department',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'department'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'address'); ?>
		<?php echo $form->textField($model,'address',array('size'=>50,'maxlength'=>200)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'address'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'company_represented'); ?>
		<?php echo $form->textField($model,'company_represented',array('size'=>50,'maxlength'=>50)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'company_represented'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'vehicle_no'); ?>
		<?php echo $form->textField($model,'vehicle_no',array('size'=>25,'maxlength'=>15)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'vehicle_no'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'no_of_persons'); ?>
		<?php echo $form->textField($model,'no_of_persons',array('size'=>25,'maxlength'=>3)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'no_of_persons'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'remark'); ?>
		<?php echo $form->textField($model,'remark',array('size'=>50,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'remark'); ?>
	</div>

	
	<div class="row">
		<?php echo $form->labelEx($model,'photo'); ?>
		<?php echo CHtml::activeFileField($model, 'photo'); ?><span class="status">&nbsp;</span>
		<?php CHtml::endForm(); ?>
		
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'age'); ?>
		<?php echo $form->textField($model,'age',array('size'=>5,'maxlength'=>2));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'age'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'gender'); ?>
		<?php echo $form->dropDownList($model,'gender', $model->getGenderOptions(),array('empty' => '----------Select--------')); ?><span class="status">&nbsp;</span>
		<?php //echo $form->textField($model,'gender',array('size'=>6,'maxlength'=>6)); ?>
		<?php echo $form->error($model,'gender'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'out_time'); ?>
		<?php echo $form->textField($model,'out_time',array('maxlength'=>2)); ?><span class="status">&nbsp;</span><span class="#">In Hours</span>
		<?php echo $form->error($model,'out_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'batch_no'); ?>
		<?php echo $form->textField($model,'batch_no',array('size'=>10,'maxlength'=>9));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'batch_no'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'item_carring'); ?>
		<?php echo $form->textField($model,'item_carring',array('size'=>10,'maxlength'=>5));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'item_carring'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
