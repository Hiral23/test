<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subject-syllabus-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	 <div class="row">
        <?php echo $form->labelEx($model,'teaching_method'); ?>
        <?php echo $form->dropDownList($model,'teaching_method',Teaching_methods::items(), array('empty' => '-----------Select---------','tabindex'=>1)); ?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'teaching_method'); ?>
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
	
	<div class="row">
		<?php echo $form->labelEx($model,'duration'); ?>
		<?php
		 $this->widget('application.extensions.jui_timepicker.JTimePicker', array(
		    'model'=>$model,
		     'attribute'=>'duration',
		     // additional javascript options for the date picker plugin
		     'options'=>array(
			 'showPeriod'=>false,
			 'showPeriodLabels'=>false,
			 ),
		     'htmlOptions'=>array('size'=>8,'maxlength'=>4,'tabindex'=>4),
		 ));
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'duration'); ?>
	</div>
	<!--
	<div class="row">
		<?php echo $form->labelEx($model,'duration'); ?>
		<?php echo $form->textField($model,'duration',array('tabindex'=>4,'size'=>3,'maxlength'=>4));  ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'duration'); ?>
	</div>-->

	<!--
	<div class="row">
		<?php echo $form->labelEx($model,'duration'); ?>
		<?php 
			if($model->duration == 0)
				echo $form->textField($model,'duration',array('tabindex'=>4,'size'=>3,'maxlength'=>4,'value'=>""));
			else
				echo $form->textField($model,'duration',array('tabindex'=>4,'size'=>3,'maxlength'=>4));
		  ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'duration'); ?>
	</div>-->


	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit','tabindex'=>5)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
