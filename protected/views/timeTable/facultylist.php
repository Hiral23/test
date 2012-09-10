<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'time-table-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>
<div class="block-error">
		<?php echo Yii::app()->user->getFlash('not-select-employee'); ?>
</div>
<?php

$faculty = array();
$acdm_name=AcademicTerm::model()->findByPk($model->timetable_acdm_term_name_id)->academic_term_name;
if($acdm_name=='Sem-1' || $acdm_name=='Sem-2')
{
$facultytablelist = CHtml::listData(EmployeeTransaction::model()->findAll(),'employee_transaction_id','employee_transaction_employee_id');
}
else
{
$facultytablelist = CHtml::listData(EmployeeTransaction::model()->findAll(array('condition'=>'employee_transaction_branch_id='.$model->timetable_branch_id)), 'employee_transaction_id','employee_transaction_employee_id');
}
$i=0;
$facidname=array();

foreach($facultytablelist as $f)
{
	$res1=EmployeeTransaction::model()->findByAttributes(array('employee_transaction_employee_id'=>$f));
	$temp1=EmployeeInfo::model()->findByAttributes(array('employee_type'=>1,'employee_id'=>$f));
	if($temp1)
	{
	$temp=$res1['employee_transaction_id'];
	$facname[$temp]=$temp1['employee_first_name'];
	}
}

$this->widget('ext.multiselects.XMultiSelects',array(
    'leftTitle'=>'All faculty',
    'leftName'=>'EmployeeTransaction[current][]',
    'leftList'=>$facname,
    'rightTitle'=>'Selected Faculty',
    'rightName'=>'EmployeeTransaction[new][]',
    'rightList'=>$faculty,
    'size'=>20,
    'width'=>'200px',
));

?>

	<div class="row buttons">
		<?php echo CHtml::button('Create', array('class'=>'submit','submit' => array('employee_timetable','id'=>$_REQUEST['id']))); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->



