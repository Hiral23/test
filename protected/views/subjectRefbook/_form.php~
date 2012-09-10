<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subject-refbook-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array(
				'validateOnSubmit'=>true,
			      ),
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<!--<p class="note">Fields with <span class="required">*</span> are required.</p>-->

	<?php //echo $form->errorSummary($model); ?>

	<!--<div class="row">
		<?php echo $form->labelEx($model,'sub_id'); ?>
		<?php echo $form->textField($model,'sub_id'); ?>
		<?php echo $form->error($model,'sub_id'); ?>
	</div>-->

	<div class="row">
		<?php echo $form->labelEx($model,'isbn_no'); ?>
		<?php echo $form->textField($model,'isbn_no',array('size'=>30,'maxlength'=>30));  ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'isbn_no'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>100)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'photo'); ?>
		<?php echo $form->fileField($model,'photo'); ?>	  
		<?php //echo CHtml::endForm(); ?>   
		
		
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
