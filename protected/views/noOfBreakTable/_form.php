<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'no-of-break-table-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php //echo $form->labelEx($model,'div_id'); ?>
		<?php //echo $form->textField($model,'division_id'); ?>
		<?php //echo $form->dropDownList($model,'division_id',Division::items(), array('empty' => '-----------Select---------','tabindex'=>16));
			//	echo $form->dropDownList($model,'div_id',CHtml::listData(Division::model()->findAll(array('condition'=>'branch_id='.$_REQUEST['branch_id'])),'division_id','division_code'),array('empty' => '-----------Select---------','tabindex'=>16));			 
			
			?>
		<span class="status">&nbsp;</span>
		<?php //echo $form->error($model,'div_id'); ?>
	</div>

	<!--<div class="row">
		<?php echo $form->labelEx($model,'day'); ?>
		<?php echo $form->dropDownList($model,'day',array("empty"=>"---------Select---------","1"=>"Monday","2"=>"Tuesday","3"=>"Wednesday","4"=>"Thursday","5"=>"Friday","6"=>"Saturday"),array('tabindex'=>1));
 ?>
		<?php echo $form->error($model,'day'); ?>
	</div>-->

	<div class="row">
		<?php echo $form->labelEx($model,'after_lec_break'); ?>
		<?php $lec= TimeTable::model()->findAllByAttributes(array(),
								$condition  = 'timetable_id = :table_id',
								$params     = array(
									':table_id' => $_REQUEST['id'], 
								));
			foreach($lec as $l)
			$no=$l['No_of_Lec'];
			
			$i=1;
			$lec_no=array();
			while($i<=$no)
			{				
				$lec_no[$i]=$i;
				$i++;
			}
			echo $form->dropDownList($model,'after_lec_break',$lec_no,array("empty"=>"---------Select---------"));

 ?>
		<?php echo $form->error($model,'after_lec_break'); ?>
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
			 'showPeriodLabels'=> false,
			),
			
		     'htmlOptions'=>array('size'=>5,'maxlength'=>5 ),
		 ));
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'duration'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array("class"=>"submit")); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
