<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'student-academic-record-trans-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<!--<div class="row">
		<?php echo $form->labelEx($model,'student_academic_record_trans_stud_id'); ?>
		<?php echo $form->textField($model,'student_academic_record_trans_stud_id'); ?>
		<?php echo $form->error($model,'student_academic_record_trans_stud_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'student_academic_record_trans_qualification_id'); ?>
		<?php echo $form->textField($model,'student_academic_record_trans_qualification_id'); ?>
		<?php echo $form->error($model,'student_academic_record_trans_qualification_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'student_academic_record_trans_eduboard_id'); ?>
		<?php echo $form->textField($model,'student_academic_record_trans_eduboard_id'); ?>
		<?php echo $form->error($model,'student_academic_record_trans_eduboard_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'student_academic_record_trans_record_trans_year_id'); ?>
		<?php echo $form->textField($model,'student_academic_record_trans_record_trans_year_id'); ?>
		<?php echo $form->error($model,'student_academic_record_trans_record_trans_year_id'); ?>
	</div>
	-->
	<div class="row">
        <?php echo $form->labelEx($model,'student_academic_record_trans_qualification_id'); ?>
        <?php echo $form->dropDownList($model,'student_academic_record_trans_qualification_id',Qualification::items(), array('empty' => '-----------Select---------','tabindex'=>1)); ?><span class="status">&nbsp;</span>
       <?php echo $form->error($model,'student_academic_record_trans_qualification_id'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'student_academic_record_trans_eduboard_id'); ?>
		<?php echo $form->dropDownList($model,'student_academic_record_trans_eduboard_id',Eduboard::items(), array('empty' => '-----------Select---------','tabindex'=>2)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'student_academic_record_trans_eduboard_id'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'student_academic_record_trans_record_trans_year_id'); ?>
		<?php echo $form->dropDownList($model,'student_academic_record_trans_record_trans_year_id',Year::items(), array('empty' => '-----------Select---------','tabindex'=>3)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'student_academic_record_trans_record_trans_year_id'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'theory_mark_max'); ?>
		<?php echo $form->textField($model,'theory_mark_max', array('tabindex'=>4,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'theory_mark_max'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'theory_mark_obtained'); ?>
		<?php echo $form->textField($model,'theory_mark_obtained', array('tabindex'=>5,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'theory_mark_obtained'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'theory_percentage'); ?>
		<?php echo $form->textField($model,'theory_percentage', array('tabindex'=>6,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'theory_percentage'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'practical_mark_max'); ?>
		<?php echo $form->textField($model,'practical_mark_max', array('tabindex'=>7,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'practical_mark_max'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'practical_mark_obtained'); ?>
		<?php echo $form->textField($model,'practical_mark_obtained', array('tabindex'=>8,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'practical_mark_obtained'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'practical_percentage'); ?>
		<?php echo $form->textField($model,'practical_percentage', array('tabindex'=>9,'maxlength'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'practical_percentage'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit','tabindex'=>10)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
