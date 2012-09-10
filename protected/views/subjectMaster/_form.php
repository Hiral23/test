<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subject-master-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_master_name'); ?>
		<?php echo $form->textField($model,'subject_master_name',array('size'=>25,'maxlength'=>50)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_master_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_master_code'); ?>
		<?php echo $form->textField($model,'subject_master_code',array('size'=>25,'maxlength'=>15)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_master_code'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_master_color_code'); ?>
		<?php //echo $form->textField($model,'subject_master_code',array('size'=>25,'maxlength'=>15)); 
		$this->widget('ext.SMiniColors.SActiveColorPicker', array(
		    'model' => $model,
		    'attribute' => 'subject_master_color_code',
		    'hidden'=>false, // defaults to false - can be set to hide the textarea with the hex
		    'options' => array(), // jQuery plugin options
		    'htmlOptions' => array(), // html attributes
		));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_master_color_code'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_master_alias'); ?>
		<?php echo $form->textField($model,'subject_master_alias',array('size'=>25,'maxlength'=>15)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_master_alias'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_master_type_id'); ?>
		<?php echo CHtml::checkBoxList("myCheckBoxList", $model->subject_master_type_id, SubjectType::items(),array('separator'=>'','labelOptions'=>array('class'=>'subject-type-label'))); ?><span class="status">&nbsp;</span>
 

		<?php echo $form->error($model,'subject_master_type_id'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'subject_master_branch_id'); ?>
		<?php echo $form->dropDownList($model,'subject_master_branch_id',Branch::items(), array('empty' => '-----------Select---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_master_branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_master_academic_terms_period_id'); ?>
		<?php //echo $form->dropDownList($model,'subject_master_academic_terms_period_id',AcademicTermPeriod::items(), array('empty' => '-----------Select---------')); ?>
		<?php
			echo $form->dropDownList($model,'subject_master_academic_terms_period_id',AcademicTermPeriod::items(),
			array(
			'prompt' => '-----------Select---------',
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('SubjectMaster/getItemName'), 
			'update'=>'#SubjectMaster_subject_master_academic_terms_name_id', //selector to update
			))); 
			 
			?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_master_academic_terms_period_id'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'subject_master_academic_terms_name_id'); ?>
	        <?php //echo $form->dropDownList($model,'subject_master_academic_terms_name_id',array()); ?>
		<?php 
			
			if(isset($model->subject_master_academic_terms_name_id))
				echo $form->dropDownList($model,'subject_master_academic_terms_name_id', CHtml::listData(AcademicTerm::model()->findAll(array('condition'=>'academic_term_id='.$model->subject_master_academic_terms_name_id)), 'academic_term_id', 'academic_term_name'));
			else
				echo $form->dropDownList($model,'subject_master_academic_terms_name_id',array()); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_master_academic_terms_name_id'); ?>
	</div>
	<div class="row">	

		<?php echo $form->labelEx($model,'subject_master_active'); ?>
		<?php echo $form->dropDownList($model,'subject_master_active',array(1=>'Active',0=>'Inactive'), array('empty' => '-----------Select---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_master_active'); ?>
	</div>

	
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
