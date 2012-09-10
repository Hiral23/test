<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('feedback_date')); ?>:</b>
	<?php echo CHtml::encode($data->feedback_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('feedback_name')); ?>:</b>
	<?php echo CHtml::encode($data->feedback_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('feedback_emp_id')); ?>:</b>
	<?php echo CHtml::encode($data->feedback_emp_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('feedback_branch_id')); ?>:</b>
	<?php echo CHtml::encode($data->feedback_branch_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('feedback_academic_term_id')); ?>:</b>
	<?php echo CHtml::encode($data->feedback_academic_term_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('feedback_subject_id')); ?>:</b>
	<?php echo CHtml::encode($data->feedback_subject_id); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('feedback_department_id')); ?>:</b>
	<?php echo CHtml::encode($data->feedback_department_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('remark')); ?>:</b>
	<?php echo CHtml::encode($data->remark); ?>
	<br />

	*/ ?>

</div>