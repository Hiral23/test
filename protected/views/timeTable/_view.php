<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('timetable_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->timetable_id), array('view', 'id'=>$data->timetable_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('clg_start_time')); ?>:</b>
	<?php echo CHtml::encode($data->clg_start_time); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('timetable_name')); ?>:</b>
	<?php echo CHtml::encode($data->timetable_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('timetable_branch_id')); ?>:</b>
	<?php echo CHtml::encode($data->timetable_branch_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('timetable_acdm_term_period_id')); ?>:</b>
	<?php echo CHtml::encode($data->timetable_acdm_term_period_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('timetable_acdm_term_name_id')); ?>:</b>
	<?php echo CHtml::encode($data->timetable_acdm_term_name_id); ?>
	<br />
</div>
