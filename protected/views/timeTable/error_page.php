<?php
$this->breadcrumbs=array(
	'Error Page',
);


echo "No division available for this critaria.. Please create division first.  <br /><br />";
echo CHtml::link('GO BACK',Yii::app()->createUrl('CreateFinaltable/'.$_REQUEST['timetableid'])); 

?>


