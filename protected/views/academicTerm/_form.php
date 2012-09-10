<div class = "test" style="display:none;">
<?php        
if($model->scenario == 'insert')
$name = "Create Academic Term";
else
$name = "Update Academic Term";
$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'mydialog',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>$name,
		'autoOpen'=>true,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>440,
                'resizable'=>false,
                'draggable'=>false,
		'close' => 'js:function(event, ui) { location.href = "'.Yii::app()->createUrl("academicTerm/admin").'"; }'
	),
));
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'academic-term-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'academic_term_period_id'); ?>
		<?php //echo $form->textField($model,'academic_term_period_id'); ?>
		<?php echo $form->dropDownList($model,'academic_term_period_id',CHtml::listData(AcademicTermPeriod::model()->findAll(array('condition'=>'academic_terms_period_organization_id='.Yii::app()->user->getState('org_id'))),'academic_terms_period_id','academic_term_period'),array('empty' => '-------Select Period---------')); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'academic_term_period_id'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'academic_term_name'); ?>
		<?php echo $form->error($model,'academic_term_name'); ?>
		<?php //echo $form->textField($model,'academic_term_name',array('size'=>40,'maxlength'=>30)); 
			echo $form->dropDownList($model,'academic_term_name',array(""=>"---------Select---------","Sem-1"=>"Sem-1","Sem-2"=>"Sem-2","Sem-3"=>"Sem-3","Sem-4"=>"Sem-4","Sem-5"=>"Sem-5","Sem-6"=>"Sem-6","Sem-7"=>"Sem-7","Sem-8"=>"Sem-8"))
			?><span class="status">&nbsp;</span>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'academic_term_start_date'); ?>
		<?php

        		$this->widget('zii.widgets.jui.CJuiDatePicker', array(
			'model'=>$model,
    			'attribute'=>'academic_term_start_date',
   			'language'=>Yii::app()->language=='et' ? 'et' : null,
    			'options'=>array(
			'dateFormat'=>'yy-mm-dd',
			'showAnim' =>'slide',
       			//'showAnim'=>'fold', // 'show' (the default), 'slideDown', 'fadeIn', 'fold'
        		//'showOn'=>'button', // 'focus', 'button', 'both'
        		//'buttonText'=>Yii::t('ui','Select form calendar'), 
        		 //'buttonImage'=>Yii::app()->request->baseUrl.'/images/calendar.png', 
       			 //'buttonImageOnly'=>true,
    ),
    'htmlOptions'=>array(
        'style'=>'width:80px;vertical-align:top'
    ),  
));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'academic_term_start_date'); ?>
		
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'academic_term_end_date'); ?>
		<?php

        		$this->widget('zii.widgets.jui.CJuiDatePicker', array(
			'model'=>$model,
    			'attribute'=>'academic_term_end_date',
   			'language'=>Yii::app()->language=='et' ? 'et' : null,
    			'options'=>array(
			'dateFormat'=>'yy-mm-dd',
       			'showAnim'=>'slide', // 'show' (the default), 'slideDown', 'fadeIn', 'fold'
        		//'showOn'=>'button', // 'focus', 'button', 'both'
        		//'buttonText'=>Yii::t('ui','Select form calendar'), 
        		// 'buttonImage'=>Yii::app()->request->baseUrl.'/images/calendar.png', 
       			// 'buttonImageOnly'=>true,
		    ),
		    'htmlOptions'=>array(
			'style'=>'width:80px;vertical-align:top'
		    ),  
	));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'academic_term_end_date'); ?>
	</div>


	
	<div class="row">
		 <?php echo $form->labelEx($model,'current_sem'); ?>
	   	 <?php echo $form->checkBox($model,'current_sem', array('value'=>1, 'uncheckValue'=>0)); ?>
	   	 <?php echo $form->error($model,'current_sem'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>
</div>
