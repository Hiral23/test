<div class="form">
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'get-feedback-form',
	'enableAjaxValidation'=>true,
	//'clientOptions'=>array('validateOnSubmit'=>true),
	//'clientOptions'=>array(
	//		'validateOnSubmit'=>true,
	//		),
)); ?>
<div class="block-error">
		<?php echo Yii::app()->user->getFlash('Feedback'); ?>
</div>

<!--<p class="row1">&nbsp;</p>
<p class="row2">Poor &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		Good &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		Better &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		Best &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		Excellent</p>
-->

<div class="row">
<table>

<tr>
<th>&nbsp;</th>
<th>&nbsp;Poor&nbsp;&nbsp;Good&nbsp;&nbsp;Better&nbsp;&nbsp;Best&nbsp;&nbsp;Excellent</th>
</tr>


<?php
$id=$_REQUEST['id'];
$result=FeedbackDetails::model()->findAll(array('condition'=>'feedback_id='.$id));
$cnt=0;
foreach($result as $data)
{
			
?>
<tr>
<td>			<?php echo $data->question;?>		</td>
<td class="radio-select">
			<?php echo CHtml::activeRadioButtonList($model,'question[]'.$cnt,array($data->id.'1'=>'',$data->id.'2'=>'',$data->id.'3'=>'',$data->id.'4'=>'',$data->id.'5'=>''),array('separator'=>'','uncheckValue'=>null));?>
			<?php //echo $form->error($model,$data->question);
			$cnt++;
?>
</td>
</tr>
			
<?php		
} ?>

</table>
<?php
	
	 //echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit'));
	 echo $form->hiddenField($model,'my',array('value'=>$cnt));
	 echo CHtml::button('Save', array('class'=>'submit','submit' => array("mycreate",'id'=>$_REQUEST['id'])));
?>
<?php $this->endWidget(); ?>
</div>
</div>

