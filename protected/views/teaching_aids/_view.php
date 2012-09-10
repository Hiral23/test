<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('teaching_aids_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->teaching_aids_id), array('view', 'id'=>$data->teaching_aids_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('teaching_aids_name')); ?>:</b>
	<?php echo CHtml::encode($data->teaching_aids_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('teaching_aids_alias')); ?>:</b>
	<?php echo CHtml::encode($data->teaching_aids_alias); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('remarks')); ?>:</b>
	<?php echo CHtml::encode($data->remarks); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('teaching_aids_created_by')); ?>:</b>
	<?php echo CHtml::encode($data->teaching_aids_created_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('teaching_aids_created_date')); ?>:</b>
	<?php echo CHtml::encode($data->teaching_aids_created_date); ?>
	<br />


</div>