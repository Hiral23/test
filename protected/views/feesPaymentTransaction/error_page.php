<?php
$this->breadcrumbs=array(
	'Error Page',
);


echo "No fees available for this critaria.. Please create fees with this branch, academic year and semester of student. <br /><br />";
echo CHtml::link('GO BACK',Yii::app()->createUrl('studentTransaction/admin')); 

?>


