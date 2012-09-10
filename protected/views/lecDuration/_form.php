<div class = "test" style="display:none;">
<?php
$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'mydialog',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Change Duration',
		'autoOpen'=>true,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>440,
                'resizable'=>false,
                'draggable'=>false,
		'close' => 'js:function(event, ui) { location.href = "'.Yii::app()->createUrl("/timeTable/CreateFinaltable").'/'.$model->timetable_id.'"; }'

	),
));
?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'lec-duration-form',
	'focus'=>'input[type="submit"]:first',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

<div class="row">
		<?php echo $form->labelEx($model,'duration'); ?>
		<?php //echo $form->textField($model,'duration'); ?>
		<?php 
		if(isset($model->duration))
		{
			function minutesToHours($minutes)
			{
				$hours          = floor($minutes / 60);
				$decimalMinutes = $minutes - floor($minutes/60) * 60;

				# Put it together.
				$hoursMinutes = sprintf("%d:%02.0f", $hours, $decimalMinutes);
				return $hoursMinutes;
			}
			$hours=minutesToHours($model->duration);
			//echo $hours;
			$this->widget('application.extensions.jui_timepicker.JTimePicker', array(
				    'model'=>$model,
				     'attribute'=>'duration',
				     // additional javascript options for the date picker plugin
				     'options'=>array(
					 'showPeriod'=>false,
					 'showPeriodLabels'=> false,
							),			
				     'htmlOptions'=>array('size'=>5,'maxlength'=>5,'value'=>$hours),
				 ));
			
		}

		else
		{	
		 $this->widget('application.extensions.jui_timepicker.JTimePicker', array(
		    'model'=>$model,
		     'attribute'=>'duration',
		     // additional javascript options for the date picker plugin
		     'options'=>array(
			 'showPeriod'=>false,
			 'showPeriodLabels'=> false,
					),
			
		     'htmlOptions'=>array('size'=>5,'maxlength'=>5),
		 ));
		}
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'duration'); ?>
	</div>

	<!--
	<div class="row">
		<?php echo $form->labelEx($model,'lecture'); ?>
		<?php echo $form->textField($model,'lecture'); ?>
		<?php echo $form->error($model,'lecture'); ?>
	</div>
	
<div class="row">
		<?php echo $form->labelEx($model,'timetable_id'); ?>
		<?php echo $form->textField($model,'timetable_id'); ?>
		<?php echo $form->error($model,'timetable_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'lec_duration_org_id'); ?>
		<?php echo $form->textField($model,'lec_duration_org_id'); ?>
		<?php echo $form->error($model,'lec_duration_org_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'created_by'); ?>
		<?php echo $form->textField($model,'created_by'); ?>
		<?php echo $form->error($model,'created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'creation_time'); ?>
		<?php echo $form->textField($model,'creation_time'); ?>
		<?php echo $form->error($model,'creation_time'); ?>
	</div>
-->
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>
</div>
