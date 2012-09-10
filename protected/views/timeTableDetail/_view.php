<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('timetable_detail_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->timetable_detail_id), array('view', 'id'=>$data->timetable_detail_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_id')); ?>:</b>
	<?php echo CHtml::encode($data->subject_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('faculty_emp_id')); ?>:</b>
	<?php echo CHtml::encode($data->faculty_emp_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('branch_id')); ?>:</b>
	<?php echo CHtml::encode($data->branch_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('acdm_period_id')); ?>:</b>
	<?php echo CHtml::encode($data->acdm_period_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('acdm_name_id')); ?>:</b>
	<?php echo CHtml::encode($data->acdm_name_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('room_id')); ?>:</b>
	<?php echo CHtml::encode($data->room_id); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('division_id')); ?>:</b>
	<?php echo CHtml::encode($data->division_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('batch_id')); ?>:</b>
	<?php echo CHtml::encode($data->batch_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_by')); ?>:</b>
	<?php echo CHtml::encode($data->created_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('creation_date')); ?>:</b>
	<?php echo CHtml::encode($data->creation_date); ?>
	<br />

	*/ ?>

</div>