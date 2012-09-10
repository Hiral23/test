<?php
$this->breadcrumbs=array(
	'MIS Report',
	
);

$this->menu=array(
	//array('label'=>'List Attendence', 'url'=>array('index')),
	//array('label'=>'Manage Attendence', 'url'=>array('admin')),
);
?>

<h1>MIS REPORT</h1>

<?php echo $this->renderPartial('report_view', array('model'=>$model,'mytotalamt'=>$mytotalamt,'mytotal'=>$mytotal,'mytotalamount'=>$mytotalamount,'mypaid'=>$mypaid,'myunpaid'=>$myunpaid,'fees_model'=>$fees_model)); ?>
