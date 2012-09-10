<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'feedback-details-form',
	'enableAjaxValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="big-row">
		<?php
		$data = feedbackDetails::model()->findAll();
		$list = CHtml::listData($data,'id', 'question');
		foreach($list as $x=>$y)	
			echo $form->textField($model,'question',array('size'=>50,'maxlength'=>50)); 
		?>
	</div>

	
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>




<?php $this->endWidget(); ?>

</div><!-- form -->
