<?php
$this->breadcrumbs=array(
	'Visitor Passes'=>array('admin'),
	$model->visitor_name,
);

$this->menu=array(
//	array('label'=>'List VisitorPass', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->pass_no),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->pass_no),'confirm'=>'Are you sure you want to delete this item?','class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Visitor Pass  <?php //echo $model->pass_no; ?></h1>

<div class = "row_photo_v">
<!--	<?php echo CHtml::encode($model->getAttributeLabel('')); ?>:  -->
	<?php echo CHtml::image(Yii::app()->baseUrl .'/visitors_photo/' . $model->photo); ?>
</div>

<div class = "row_all ">
	<div class = "row_t_v">
		<?php echo '<lable><b>Pass No :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->pass_no .'<br>'; ?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>In Date Time :</b></lable>';?>

		<div class = "rowm">

			<?php
			$date = date_create($model->in_date_time);
			echo date_format($date, 'd-m-Y H:i:s');
			?>

		</div>

	</div>
</div>

<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Visitor Name :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->visitor_name .'<br>'; ?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Contact Person :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->contact_person .'<br>'; ?>
		</div>

	</div>
</div>

<div class = "row_all">
	<div class = "row_t_v">
		<?php echo '<lable><b>Purpose :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->purpose .'<br>'; ?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Department :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->Rel_vistor_dep->department_name .'<br>'; ?>
		</div>

	</div>
</div>

<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Address :</b></lable>';?>	
	
		<div class = "rowm">
			<?php echo $model->address .'<br>'; ?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Organization Represented :</b></lable>';?>

		<div class = "rowm">
			<?php
				if($model->company_represented != null)
					echo $model->company_represented. '<br>';
				else
					 echo "N/A";
			
			?>
		</div>

	</div>
</div>

<div class = "row_all">
	<div class = "row_t_v">
		<?php echo '<lable><b>Vehicle No :</b></lable>';?>	
	
		<div class = "rowm">
			<?php
				if($model->vehicle_no != null)
					echo $model->vehicle_no. '<br>';
				else
					 echo "N/A";
			
			?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>No of Persons :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->no_of_persons.'<br>'; ?>
		</div>

	</div>
</div>

<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Remark :</b></lable>';?>	
	
		<div class = "rowm">
			<?php
				if($model->remark != null)
					echo $model->remark. '<br>';
				else
					 echo "N/A";
			
			?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Age :</b></lable>';?>

		<div class = "rowm">
			<?php echo $model->age.'<br>'; ?>
		</div>

	</div>
</div>

<div class = "row_all">
	<div class = "row_t_v">
		<?php echo '<lable><b>Gender :</b></lable>';?>	
		<div class = "rowm">
			<?php echo $model->gender .'<br>'; ?>
		</div>
	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Out Time in hour :</b></lable>';?>

		<div class = "rowm">
			<?php
				if($model->out_time != 0)
					echo $model->out_time. '<br>';
				else
					 echo "N/A";
			
			?>
		</div>

	</div>
</div>

<div class = "row_all_a">
	<div class = "row_t_v">
		<?php echo '<lable><b>Batch No :</b></lable>';?>	
		<div class = "rowm">
			<?php
				if($model->batch_no != null)
					echo $model->batch_no. '<br>';
				else
					 echo "N/A";
			
			?>
		</div>

	</div>

	<div class = "row_t_v">
		<?php echo '<lable><b>Item Carring :</b></lable>';?>

		<div class = "rowm">
			<?php
				if($model->item_carring != null)
					echo $model->item_carring. '<br>';
				else
					 echo "N/A";
			
			?>
		</div>
	</div>
	<div class = "row_t_v">
		<?php echo CHtml::button('Out', array('class'=>'submit','submit' => array('myupdate','id'=>$model->pass_no))); ?>
	</div>
</div>

