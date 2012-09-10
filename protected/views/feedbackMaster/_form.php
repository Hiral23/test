<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'feedback-master-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	
	<div class="row">
		<?php echo $form->labelEx($model,'feedback_name'); ?>
		<?php echo $form->textField($model,'feedback_name',array('tabindex'=>1,'size'=>30,'maxlength'=>30)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_name'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'feedback_start_date'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',
		    array(
			'model'=>$model,
			'attribute'=>'feedback_start_date',
			'language' => 'en',
			'options' => array(
			    'dateFormat'=>'yy-mm-dd',
			    'changeMonth' => 'true',
			    'changeYear' => 'true',
			    'duration'=>'fast',
			    'showAnim' =>'slide',
			    
			),
			'htmlOptions'=>array('tabindex'=>2,
			'style'=>'height:18px;
			    padding-left: 4px;width:168px;'

			)
		    )
		);
	?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_start_date'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'feedback_end_date'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',
		    array(
			'model'=>$model,
			'attribute'=>'feedback_end_date',
			'language' => 'en',
			'options' => array(
			    'dateFormat'=>'yy-mm-dd',
			    'changeMonth' => 'true',
			    'changeYear' => 'true',
			    'duration'=>'fast',
			    'showAnim' =>'slide',
			    
			),
			'htmlOptions'=>array('tabindex'=>3,
			'style'=>'height:18px;
			    padding-left: 4px;width:168px;'

			)
		    )
		);
	?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_end_date'); ?>
	</div>




	<div class="row">
		<?php echo $form->labelEx($model,'feedback_emp_id'); ?>
		<?php echo $form->dropDownList($model,'feedback_emp_id',EmployeeInfo::items(), array('empty' => '-----------Select---------','tabindex'=>4)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_emp_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'feedback_branch_id'); ?>
		<?php echo $form->dropDownList($model,'feedback_branch_id',Branch::items(), array('empty' => '-----------Select---------','tabindex'=>5)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_branch_id'); ?>
	</div>
	<!--
	<div class="row">
		<?php echo $form->labelEx($model,'feedback_academic_term_id'); ?>
		<?php echo $form->dropDownList($model,'feedback_academic_term_id',AcademicTermPeriod::items(), array('empty' => '-----------Select---------','tabindex'=>6)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_academic_term_id'); ?>
	</div>-->
	<div class="row">
	 <?php echo $form->labelEx($model,'feedback_academic_term_period_id'); ?>
	<?php
			echo $form->dropDownList($model,'feedback_academic_term_period_id',AcademicTermPeriod::items(),
			array(
			'prompt' => '---------------Select-------------','tabindex'=>6,
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('FeedbackMaster/getItemName'), 
			'update'=>'#FeedbackMaster_feedback_academic_term_id', //selector to update
			
			))); 
			 
			?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'feedback_academic_term_period_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'feedback_academic_term_id'); ?>
		<?php 
			
			if(isset($model->feedback_academic_term_id))
				echo $form->dropDownList($model,'feedback_academic_term_id', CHtml::listData(AcademicTerm::model()->findAll(array('condition'=>'academic_term_id='.$model->feedback_academic_term_id)), 'academic_term_id', 'academic_term_name'));
			else
				echo $form->dropDownList($model,'feedback_academic_term_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>7)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_academic_term_id'); ?>
	</div>	
	<div class="row">
		<?php echo $form->labelEx($model,'feedback_subject_id'); ?>
		<?php echo $form->dropDownList($model,'feedback_subject_id',SubjectMaster::items(), array('empty' => '-----------Select---------','tabindex'=>8)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_subject_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'feedback_department_id'); ?>
		<?php echo $form->dropDownList($model,'feedback_department_id',Department::items(), array('empty' => '-----------Select---------','tabindex'=>9)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'feedback_department_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'remark'); ?>
		<?php echo $form->textField($model,'remark',array('tabindex'=>10,'size'=>50,'maxlength'=>50)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'remark'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('tabindex'=>11,'class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
