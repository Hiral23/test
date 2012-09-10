<?php
$this->breadcrumbs=array(
	'Feedback Details'=>array('index'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List FeedbackDetails', 'url'=>array('index')),
	//array('label'=>'Manage FeedbackDetails', 'url'=>array('admin')),
);
?>

<h1>Give Feedback</h1>

<?php echo $this->renderPartial('question', array('model'=>$model)); ?>
