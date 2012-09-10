<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('timetable_id')); ?>:</b>
	<?php echo CHtml::encode($data->timetable_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('day')); ?>:</b>
	<?php echo CHtml::encode($data->day); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('after_lec_break')); ?>:</b>
	<?php echo CHtml::encode($data->after_lec_break); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('branch_id')); ?>:</b>
	<?php echo CHtml::encode($data->branch_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('div_id')); ?>:</b>
	<?php echo CHtml::encode($data->div_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('acdm_period_id')); ?>:</b>
	<?php echo CHtml::encode($data->acdm_period_id); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('acdm_name_id')); ?>:</b>
	<?php echo CHtml::encode($data->acdm_name_id); ?>
	<br />

	*/ ?>

</div>