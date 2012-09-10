<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subject-syllabus-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	
	<div class="row">
		<?php echo $form->labelEx($model,'actual_start_date'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',
		    array(
			'model'=>$model,
			'attribute'=>'actual_start_date',
			'language' => 'en',
			'options' => array(
			    'dateFormat'=>'yy-mm-dd',
			    'changeMonth' => 'true',
			    'changeYear' => 'true',
			    'duration'=>'fast',
			    'showAnim' =>'slide',
			    
			),
			'htmlOptions'=>array('tabindex'=>1,
			'style'=>'height:18px;
			    padding-left: 4px;width:168px;'

			)
		    )
		);
	?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'actual_start_date'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'actual_end_date'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',
		    array(
			'model'=>$model,
			'attribute'=>'actual_end_date',
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
		<?php echo $form->error($model,'actual_end_date'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'actual_duration'); ?>
		<?php
		 $this->widget('application.extensions.jui_timepicker.JTimePicker', array(
		    'model'=>$model,
		     'attribute'=>'actual_duration',
		     // additional javascript options for the date picker plugin
		     'options'=>array(
			 'showPeriod'=>false,
			  'showPeriodLabels'=>false,
			 ),
		     'htmlOptions'=>array('size'=>8,'maxlength'=>3,'tabindex'=>4),
		 ));
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'actual_duration'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'actual_remarks'); ?>
		<?php echo $form->textField($model,'actual_remarks',array('tabindex'=>5,'size'=>50));  ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'actual_remarks'); ?>
	</div>

	<div class="row">
	       <?php echo $form->labelEx($model,'deliver_topic'); ?>
               <?php echo $form->textArea($model,'deliver_topic',array('tabindex'=>6,'rows'=>4, 'cols'=>69)); ?><span class="status">&nbsp;</span>
               <?php echo $form->error($model,'deliver_topic'); ?>
	      </div>

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
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit','tabindex'=>7)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
