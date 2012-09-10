<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'studentwise-form',
	'enableAjaxValidation'=>true,

)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="block-error">
		<?php echo Yii::app()->user->getFlash('no_student_found'); ?>
		
	</div>

	<!--	
	<div class="row">

        <?php echo $form->labelEx($model,'sem_id'); ?>
	<?php
			echo $form->dropDownList($model,'sem_id',AcademicTermPeriod::items(),
			array(
			'prompt' => '---------------Select-------------','tabindex'=>2,
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('Attendence/getItemName'), 
			'update'=>'#Attendence_sem_name_id', //selector to update
			
			))); 
			 
			?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'sem_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'sem_name_id'); ?>
		<?php 
			
			if(isset($model->sem_name_id))
				echo $form->dropDownList($model,'sem_name_id', CHtml::listData(AcademicTerm::model()->findAll(array('condition'=>'academic_term_id='.$model->sem_name_id)), 'academic_term_id', 'academic_term_name'));
			else
				echo $form->dropDownList($model,'sem_name_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>3)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'sem_name_id'); ?>
	</div>	


	<div class="row">
		<?php echo $form->labelEx($model,'branch_id'); ?>
		<?php echo $form->dropDownList($model,'branch_id',Branch::items(), array('empty' => '---------------Select-------------','tabindex'=>4)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'branch_id'); ?>
	</div>
	-->
	<div class="row">
		<?php echo $form->labelEx($model,'student_enroll_no'); ?>
		<?php echo $form->textField($model,'student_enroll_no',array('tabindex'=>1)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'student_enroll_no'); ?>
	</div>

	<div class="row">

	  <?php echo $form->labelEx($model,'start_date'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',
		    array(
			'model'=>$model,
			'attribute'=>'start_date',
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
		<?php echo $form->error($model,'start_date'); ?>
	</div>

	
	

	<div class="row">

	  <?php echo $form->labelEx($model,'end_date'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',
		    array(
			'model'=>$model,
			'attribute'=>'end_date',
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
		<?php echo $form->error($model,'end_date'); ?>
	</div>



<div class="row buttons">
	<?php echo CHtml::submitButton('Search', array('class'=>'submit','name'=>'search','tabindex'=>4)); ?>
</div>

<?php $this->endWidget(); ?>
</div>


