<?php
$this->breadcrumbs=array(
	'Inwards'=>array('admin'),
	$model->invoice_description,
);

$this->menu=array(
//	array('label'=>'List Inward', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	array('label'=>'', 'url'=>array('/inwardDetails/create','id'=>$model->id),'linkOptions'=>array('class'=>'details','title'=>'Add Inward Details')),

);
?>

<h1>View Inward  <?php //echo $model->id; ?></h1>

<div class = "row_photo_v">
	<?php echo CHtml::image(Yii::app()->baseUrl.'/inward_image/' . $model->photo, 'No Image',array('width'=>'125px','height'=>'175px')); ?>
</div>

<div class = "row_all ">

	<div class = "row_t_v">
		<?php echo '<lable><b>Invoice No :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->invoice_no_dc .'<br>'; ?>
		</div>
	</div>

</div>

<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Company Name :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->company_name .'<br>'; ?>
		</div>
	</div>
	<div class = "row_t_v">
		<?php echo '<lable><b>Description :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->invoice_description .'<br>'; ?>
		</div>

	</div>

</div>

<div class = "row_all">
	<div class = "row_t_v">
		<?php echo '<lable><b>Invoice Date :</b></lable>';?>	
	
		<div class = "rowm">

			<?php
			$date = date_create( $model->invoice_date);
			echo date_format($date, 'd-m-Y');
			?>

		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Received Date :</b></lable>';?>

		<div class = "rowm">

			<?php
			$date = date_create($model->received_date);
			echo date_format($date, 'd-m-Y');
			?>

		</div>

	</div>
</div>

<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Sender Name :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->sender_name .'<br>'; ?>
		</div>
	</div>
	<div class = "row_t_v">
		<?php echo '<lable><b>Receiver Name :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->receiver_name .'<br>'; ?>
		</div>
	</div>
	
</div>

<div class = "row_all">
	<div class = "row_t_v">
		<?php echo '<lable><b>Department :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->rel_department->department_name.'<br>'; ?>
		</div>

	</div>
	</div>
	<div class = "row_all_a">

	<div class = "row_t_v">
		<?php echo '<lable><b>Document :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo CHtml::link(CHtml::encode($model->document), Yii::app()->baseUrl .'/inward_document/' .$model->document, $htmlOptions=array("target"=>"_parent")) .'<br>'; ?>
		</div>
	</div>
</div>
<div class = "row_all">
	<div class = "row_t_v">
		<?php echo '<lable><b>Document Desc :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->document_desc.'<br>'; ?>
		</div>

	</div>
</div>

<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Org Name :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->rel_organization->organization_name .'<br>'; ?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>No Of Packets :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->no_of_packets.'<br>'; ?>
		</div>

	</div>
</div>


<br />
<br />
<br /><?php $this->widget('zii.widgets.grid.CGridView', array(
       'id'=>'inward-details-table-grid',
       'dataProvider'=>$inward_details->mysearch(),
 //       'filter'=>$inward_details,
       'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),

//               'id',
		//'inward_id',
		'name',
		'description',
		'quantity',
		//'item_category_id',
		
		array(
			'name'=>'item_category_id',
			'value'=>'$data->itemCategory->cat_name',
			 
		),
		'rate',
		'amount',
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
			'buttons'=>array(
				'delete' => array(
		                        'label'=>'Update Fees', // text label of the button
					'url'=>'Yii::app()->createUrl("inwardDetails/delete", array("id"=>$data->id))',
					),
		                'update' => array(
		                        'label'=>'Update Fees', // text label of the button
					'url'=>'Yii::app()->createUrl("inwardDetails/update", array("id"=>$data->id))',
		                ),
			),

		),
       ),
)); ?>

