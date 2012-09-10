<?php
$this->breadcrumbs=array(
	'Branchwise Receipt Generation',
	
);
?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'fees-payment-cheque-form',
	'enableAjaxValidation'=>true,
	
)); ?>

<?php if($flag)
	echo "Please select all field";
?>
	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>
	<?php echo $form->errorSummary($model); ?>
<?php  $org_id=Yii::app()->user->getState('org_id'); ?>
	<div class="row">
	
        <?php echo $form->labelEx($model,'fees_acdm_period'); ?>
        
	<?php
			echo $form->dropDownList($model,'fees_acdm_period',AcademicTermPeriod::items(),
			array(
			'prompt' => '-----------Select-----------','tabindex'=>21,
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('FeesPaymentTransaction/getItemName'), 
			'update'=>'#FeesPaymentTransaction_fees_acdm_name', //selector to update
			
			))); 
			 
			?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'fees_acdm_period'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'fees_acdm_name'); ?>
	        <?php //echo $form->dropDownList($model,'student_academic_term_name_id',array()); ?>
		<?php 
			echo $form->dropDownList($model,'fees_acdm_name',array('prompt' => '-----------Select-----------'),array('tabindex'=>22)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'fees_acdm_name'); ?>
	</div>	
	<div class="row">
		<?php echo $form->labelEx($model,'fees_branch'); ?>
		<?php //echo $form->textField($model,'acdm_name_id'); ?>
		
		<?php
			echo $form->dropDownList($model,'fees_branch',
				CHtml::listData(Branch::model()->findAll(array('condition'=> 'branch_organization_id='.$org_id)),'branch_id','branch_name'),
				array(
				'prompt' => '-----------Select-----------','tabindex'=>2,
				'ajax' => array(
				'type'=>'POST', 
				'url'=>CController::createUrl('FeesPaymentTransaction/getItemName1'),	 	
				'update'=>'#FeesPaymentTransaction_fees_division', //selector to update
				
				)));
			 
			 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'fees_branch'); ?>
	</div>

	
	

	<div class="row">
		<?php echo $form->labelEx($model,'fees_division'); ?>
		<?php 
			
			
				echo $form->dropDownList($model,'fees_division',array('prompt' => '-----------Select-----------'),array('tabindex'=>3)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'fees_division'); ?>
	</div>


	
	
	<div class="row buttons">
		<?php echo CHtml::submitButton('search', array('class'=>'submit'));
			//echo CHtml::button('search',array('class'=>'submit','submit'=>array('')); 
		?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

