<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('assign_subject_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->assign_subject_id), array('view', 'id'=>$data->assign_subject_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_id')); ?>:</b>
	<?php echo CHtml::encode($data->Rel_sub->subject_master_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_faculty_id')); ?>:</b>
	<?php echo CHtml::encode($data->Rel_Emp_Id->employee_first_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('active')); ?>:</b>
	<?php echo CHtml::encode($data->active); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('updated_date')); ?>:</b>
	<?php echo CHtml::encode($data->updated_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('updated_user')); ?>:</b>
	<?php echo CHtml::encode($data->updated_user); ?>
	<br />


</div>
