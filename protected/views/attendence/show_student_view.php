
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'attendence-form',
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
	//'enableAjaxValidation'=>false,
	 'stateful'=>true,
	//'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>


<?php 
			
			$count = 0;
			$count = count($row1);
		if($count==0)
		{
		echo "No student with this criteria";
		}
		else
		{
			
			for($i=0;$i<count($row1);$i++)
			{
			   $stud_id = $row1[$i]['student_transaction_student_id'];
			   $name_lable = StudentInfo::model()->findByPk($row1[$i]['student_transaction_student_id'])->student_first_name;
?>
		<div class="row">
			<?php echo $form->labelEx($model,$name_lable); ?>		   			
			<?php echo $form->checkBox($model, 'st_id[]', array('value'=>$stud_id, 'uncheckValue'=>null,'checked'=>'checked')); ?>
                        <?php //echo CHtml::activeCheckBox($model,'stud_id[]'.$i,array('checked'=>false,'value'=>$stud_id,'uncheckValue' => null)); ?>
			<?php echo $form->error($model,'stud_id'); ?>
		</div>

<?php  			
}

?>
<div class="row buttons">
		<?php 
			 //echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
		<?php echo CHtml::submitButton('save', array('class'=>'submit','name'=>'save','tabindex'=>10)); 
			 ?>
	</div>
<?php }?>
<?php $this->endWidget(); ?>

</div>
