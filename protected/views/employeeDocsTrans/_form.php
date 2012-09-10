<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'employee-docs-trans-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array(
			'validateOnSubmit'=>true,
			),
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php // echo $form->errorSummary($model); 
		//$this->layout='receipt_layout';
	?>

	<div class="row">
		<?php echo $form->labelEx($emp_doc,'employee_docs_desc'); ?>
		<?php echo $form->textField($emp_doc,'employee_docs_desc',array('size'=>40,'maxlength'=>50)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($emp_doc,'employee_docs_desc'); ?>
	</div>


	<div class="row">
<!--		<?php echo $form->labelEx($emp_doc,'employee_docs_path'); ?>
		<?php $this->widget('CMultiFileUpload', array(
                'name' => 'employee_docs_path',
		'model'=>$emp_doc,
	        'attribute'=>'employee_docs_path', 
		'accept' => 'jpeg|jpg|gif|png|pdf|doc|docx|odt|txt|ods', // useful for verifying files
                'duplicate' => 'Duplicate file!', // useful, i think
                'denied' => 'Invalid file type', // useful, i think
            ));
		?> -->
	      <?php echo $form->labelEx($emp_doc,'employee_docs_path'); ?>
		<?php echo $form->fileField($emp_doc, 'employee_docs_path'); ?>
	      <?php // echo CHtml::activeFileField($emp_doc, 'employee_docs_path'); ?>
		<span class="status">&nbsp;</span>
	      <?php CHtml::endForm(); ?>
	      <div>&nbsp;</div>		
	      
	</div>
	<div class="hint"><b>Hint:-</b>&nbsp;Upload Only Jpeg, Jpg, Pdf, Txt, Doc, Gif, Png Type Document</div>
	 <div>&nbsp;</div>
	<div class="row buttons">

	       <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); ?>

	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
