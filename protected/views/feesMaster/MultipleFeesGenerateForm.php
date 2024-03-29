<?php
$this->breadcrumbs=array(
	'Fees Masters'=>array('admin'),
	'Create',
);
?>
<h1>Create Fees</h1>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'multipla-fees-master-form',
	'enableAjaxValidation'=>true,
	//'clientOptions'=>array('validateOnSubmit'=>true),
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); 
	$org_id=Yii::app()->user->getState('org_id');
	$branch_array=Branch::model()->findAll(array('condition'=>'branch_organization_id ='.$org_id));
	$quota_array=Quota::model()->findAll(array('condition'=>'quota_organization_id='.$org_id)); ?>
	
	<div class="row">
	<?php echo $form->labelEx($model,'fees_branch_id'); ?>
	<?php
	foreach($branch_array as $b)
	{
		echo "<div class='row'>";
		echo $form->checkBox($model, 'fees_branch_id[]', array('value'=>$b['branch_id'], 'uncheckValue'=>null));	
		echo "&nbsp;".$b['branch_name'];
?>
		</div>
<?php	}?>
	<?php echo $form->error($model,'fees_branch_id'); ?>
	</div>
	<div class="row">
	<?php echo $form->labelEx($model,'fees_quota_id'); ?>
	<?php
	foreach($quota_array as $q)
	{
		echo "<div class='row'>";
		echo $form->checkBox($model, 'fees_quota_id[]', array('value'=>$q['quota_id'], 'uncheckValue'=>null));	
		echo "&nbsp;".$q['quota_name'];
?>
		</div>
<?php   }  ?>
	<?php echo $form->error($model,'fees_quota_id'); ?>
	</div>
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
