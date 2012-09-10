<?php
$this->breadcrumbs=array(
	'Cheque_search',
);


?>

<h1>Search Fees Cheque Details</h1>


<?php echo $this->renderPartial('search_form', array('model'=>$model,'fees_cheque'=>$fees_cheque)); ?>
