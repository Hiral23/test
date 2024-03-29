<!--<script>
		$(document).ready(function() {

			$('#TimeTable_timetable_acdm_term_period_id').change(function() {
			     				
				alert($('#TimeTable_timetable_acdm_term_name_id').val());
				if(($('#TimeTable_timetable_acdm_term_name_id').val()==1))
					$('#TimeTable_timetable_branch_id').remove();
	   		});
	
		});
</script>-->
<?php
$semid = "<script>document.write(semid);</script>";
echo $semid;
?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'time-table-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),

)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>
	
	<div class="row">
		<?php echo $form->labelEx($model,'timetable_name'); ?>
		<?php echo $form->textField($model,'timetable_name',array('size'=>18,'maxlength'=>25,'tabindex'=>1)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'timetable_name'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'No_of_Lec'); ?>
		<?php echo $form->textField($model,'No_of_Lec',array('size'=>18,'maxlength'=>25,'tabindex'=>2)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'No_of_Lec'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'lec_duration'); ?>
		<?php 
		if(isset($model->lec_duration))
		{
			function minutesToHours($minutes)
			{
				$hours          = floor($minutes / 60);
				$decimalMinutes = $minutes - floor($minutes/60) * 60;

				# Put it together.
				$hoursMinutes = sprintf("%d:%02.0f", $hours, $decimalMinutes);
				return $hoursMinutes;
			}
			$hours=minutesToHours($model->lec_duration);
			//echo $hours;
			$this->widget('application.extensions.jui_timepicker.JTimePicker', array(
				    'model'=>$model,
				     'attribute'=>'lec_duration',
				     // additional javascript options for the date picker plugin
				     'options'=>array(
					 'showPeriod'=>false,
					 'showPeriodLabels'=> false,
							),			
				     'htmlOptions'=>array('size'=>5,'maxlength'=>5,'tabindex'=>3,'value'=>$hours),
				 ));
			
		}

		else
		{	
		 $this->widget('application.extensions.jui_timepicker.JTimePicker', array(
		    'model'=>$model,
		     'attribute'=>'lec_duration',
		     // additional javascript options for the date picker plugin
		     'options'=>array(
			 'showPeriod'=>false,
			 'showPeriodLabels'=> false,
					),
			
		     'htmlOptions'=>array('size'=>5,'maxlength'=>5,'tabindex'=>3),
		 ));
		}
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'lec_duration'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'clg_start_time'); ?>
		<?php
		 $this->widget('application.extensions.jui_timepicker.JTimePicker', array(
		    'model'=>$model,
		     'attribute'=>'clg_start_time',
		     // additional javascript options for the date picker plugin
		     'options'=>array(
			 'showPeriod'=>true,
			 ),
		     'htmlOptions'=>array('size'=>8,'maxlength'=>8,'tabindex'=>4),
		 ));
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'clg_start_time'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'timetable_acdm_term_period_id'); ?>
		<?php //echo $form->textField($model,'acdm_period_id'); ?>
		<?php echo $form->dropDownList($model,'timetable_acdm_term_period_id',AcademicTermPeriod::items(),array('empty'=>'-------Select------','tabindex'=>5)); 			 
			?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'timetable_acdm_term_period_id'); ?>
	</div>

			<?php echo $form->checkBox($model, 'zero_lec', array('uncheckValue'=>0,'tabindex'=>6)); ?>
			<?php echo $form->labelEx($model,'zero_lec'); ?>
			<?php echo $form->error($model,'zero_lec'); ?>
	
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit','tabindex'=>7)); ?>
	</div>
	<!--<div class="row buttons">
		<?php echo CHtml::button('Create', array('class'=>'submit','submit' => array('Createtable'))); ?>
	</div> -->

<?php $this->endWidget(); ?>

</div><!-- form -->



