<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'time-table-form',
	'enableAjaxValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>
	
	<div class="row">
		<?php echo $form->labelEx($model,'No_of_Lec'); ?>
		<?php echo $form->textField($model,'No_of_Lec',array('size'=>18,'maxlength'=>25,'tabindex'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'No_of_Lec'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'No_Of_Break'); ?>
		<?php echo $form->textField($model,'No_Of_Break',array('size'=>18,'maxlength'=>25,'tabindex'=>10)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'No_Of_Break'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'start_time'); ?>
		<?php
			$this->widget('zii.widgets.jui.CJuiDatePicker',
			    array(
				'model'=>$model,
				'attribute'=>'start_time',
				'language' => 'en',
				'options' => array(
				    'dateFormat'=>'yy-mm-dd',
				    'changeMonth' => 'true',
				    'changeYear' => 'true',
				    'duration'=>'fast',
				    'showAnim' =>'slide',
				),
			
			    )
			);
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'start_time'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'end_time'); ?>
		<?php
			$this->widget('zii.widgets.jui.CJuiDatePicker',
			    array(
				'model'=>$model,
				'attribute'=>'end_time',
				'language' => 'en',
				'options' => array(
				    'dateFormat'=>'yy-mm-dd',
				    'changeMonth' => 'true',
				    'changeYear' => 'true',
				    'duration'=>'fast',
				    'showAnim' =>'slide',
				),
			
			    )
			);
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'end_time'); ?>
	</div>


	<div class="row-right">
		<?php echo $form->labelEx($model,'type'); ?>
		<?php echo $form->dropdownList($model,'type',$model->getScheduleOptions(), array('empty' => '-----------Select---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'type'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'day'); ?>
		<?php echo $form->dropdownList($model,'day',$model->getDayOptions(), array('empty' => '-----------Select---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'day'); ?>
	</div>

	

	<!--<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>-->
	<div class="row buttons">
		<?php echo CHtml::button('Create', array('class'=>'submit','submit' => array('Createtable'))); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->