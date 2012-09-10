<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sub_id')); ?>:</b>
	<?php echo CHtml::encode($data->sub_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('topic_name')); ?>:</b>
	<?php echo CHtml::encode($data->topic_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('topic_description')); ?>:</b>
	<?php echo CHtml::encode($data->topic_description); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('hours')); ?>:</b>
	<?php echo CHtml::encode($data->hours); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_by')); ?>:</b>
	<?php echo CHtml::encode($data->created_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_date')); ?>:</b>
	<?php echo CHtml::encode($data->created_date); ?>
	<br />


</div>