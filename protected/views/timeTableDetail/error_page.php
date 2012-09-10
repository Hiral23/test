<?php
$this->breadcrumbs=array(
	'Error Page',
);


echo "No batch or divisiion or room available for this critaria.. Please create first.  <br /><br />";
echo CHtml::link('GO BACK',Yii::app()->createUrl('timeTable/CreateFinaltable/'.$_REQUEST['timetableid'])); 

?>


