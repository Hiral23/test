<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('room_name')); ?>:</b>
	<?php echo CHtml::encode($data->room_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('location')); ?>:</b>
	<?php echo CHtml::encode($data->location); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('seat_capacity')); ?>:</b>
	<?php echo CHtml::encode($data->seat_capacity); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('room_category')); ?>:</b>
	<?php echo CHtml::encode($data->room_category); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('no_of_banches')); ?>:</b>
	<?php echo CHtml::encode($data->no_of_banches); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('remarks')); ?>:</b>
	<?php echo CHtml::encode($data->remarks); ?>
	<br />


</div>