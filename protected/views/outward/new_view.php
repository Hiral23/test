<?php
$this->breadcrumbs=array(
	'Outwards'=>array('admin'),
	$model->invoice_description,
);

$this->menu=array(
	//array('label'=>'List Outward', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	array('label'=>'', 'url'=>array('/outwardDetails/create','id'=>$model->id),'linkOptions'=>array('class'=>'details','title'=>'Add Outward Details')),
);
?>

<h1>View Outward  <?php //echo $model->id; ?></h1>


<div class = "row_photo_v">
	<?php echo CHtml::image(Yii::app()->baseUrl.'/outward_image/' . $model->photo, 'No Image',array('width'=>'125px','height'=>'175px')); ?>
</div>

<div class = "row_all ">

	<div class = "row_t_v">
		<?php echo '<lable><b>Refernce No :</b></lable>';?>

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
		<?php echo '<lable><b>Date :</b></lable>';?>	
	
		<div class = "rowm">

			<?php
			$date = date_create( $model->invoice_date);
			echo date_format($date, 'd-m-Y');
			?>

		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Sending Date :</b></lable>';?>

		<div class = "rowm">

			<?php
			$date = date_create($model->sending_date);
			echo date_format($date, 'd-m-Y');
			?>

		</div>

	</div>
</div>

<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Receiver Name :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->receiver_name .'<br>'; ?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Department :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->department0->department_name.'<br>'; ?>
		</div>

	</div>
</div>

<div class = "row_all">
	<div class = "row_t_v">
		<?php echo '<lable><b>Document :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo CHtml::link(CHtml::encode($model->document), Yii::app()->baseUrl .'/outward_document/' .$model->document, $htmlOptions=array("target"=>"_parent")); ?>
		</div>
	</div>
</div>
<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Document Desc :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->document_desc.'<br>'; ?>
		</div>

	</div>
</div>

<div class = "row_all">
	<div class = "row_t_v">
		<?php echo '<lable><b>Org Name :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->orgName->organization_name  .'<br>'; ?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>No Of Packets :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->no_of_packets.'<br>'; ?>
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
</div>




<?php $out=new OutwardDetails;?>

<br><?php $this->widget('zii.widgets.grid.CGridView', array(
       'id'=>'outward-details-table-grid',
       'dataProvider'=>$outward_details->mysearch(),
//        'filter'=>$model,
       'columns'=>array(

		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),

//               'id',
		//'outward_id',
		//'item_category_id',
		array(
			'name'=>'item_category_id',
			'value'=>'$data->itemCategory->cat_name',
		),
		//'name',
		array(
			'name'=>'name',
			'value'=>'$data->inwardDetailName->name',
		),
		'description',
		'quantity',
		//'rate',
		//'amount',
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
			'buttons'=>array(
				'delete' => array(
		                        'label'=>'Delete', // text label of the button
					'url'=>'Yii::app()->createUrl("outwardDetails/delete", array("id"=>$data->id))',
					),
		                'update' => array(
		                        'label'=>'Update', // text label of the button
					'url'=>'Yii::app()->createUrl("outwardDetails/update", array("id"=>$data->id))',
		                ),
			),

		),
       ),
)); ?>

