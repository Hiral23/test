<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'fees-payment-transaction-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
	
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="block-error">
		<?php echo Yii::app()->user->getFlash('error'); ?>
	</div>

	<div class="row">

	  <?php echo $form->labelEx($model,'Start Date'); ?>
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
			'htmlOptions'=>array('tabindex'=>1,
			'style'=>'height:18px;
			    padding-left: 4px;width:168px;'

			)
		    )
		);
	?>
	<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'fees_received_date'); ?>
	</div>

	
	

	<div class="row">

	  <?php echo $form->labelEx($model,'End Date'); ?>
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
			'htmlOptions'=>array('tabindex'=>2,
			'style'=>'height:18px;
			    padding-left: 4px;width:168px;'

			)
		    )
		);
	?>
	<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'fees_received_date'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('search', array('class'=>'submit','tabindex'=>3));
			
		?>
	</div>


<?php $this->endWidget(); ?>

</div><!-- form -->



