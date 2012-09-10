<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('extratimetable_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->extratimetable_id), array('view', 'id'=>$data->extratimetable_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('timetable_id')); ?>:</b>
	<?php echo CHtml::encode($data->timetable_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('faculty_id')); ?>:</b>
	<?php echo CHtml::encode($data->faculty_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('branch_id')); ?>:</b>
	<?php echo CHtml::encode($data->branch_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('day')); ?>:</b>
	<?php echo CHtml::encode($data->day); ?>
	<br />


</div>