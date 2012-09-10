<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('employee_sms_email_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->employee_sms_email_id), array('view', 'id'=>$data->employee_sms_email_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('department_id')); ?>:</b>
	<?php echo CHtml::encode($data->rel_emp_sms_divid->department_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('branch_id')); ?>:</b>
	<?php echo CHtml::encode($data->rel_emp_sms_bid->branch_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('shift_id')); ?>:</b>
	<?php echo CHtml::encode($data->rel_emp_sms_shiftid->shift_type); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('message_email_text')); ?>:</b>
	<?php echo CHtml::encode($data->message_email_text); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('email_sms_status')); ?>:</b>
	<?php echo CHtml::encode($data->email_sms_status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_by')); ?>:</b>
	<?php
		$create_user = User::model()->findbyPk($data->created_by);
	?>	
	<?php echo CHtml::encode($data->created_by); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('creation_date')); ?>:</b>
	<?php echo CHtml::encode($data->creation_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('employee_id')); ?>:</b>
	<?php echo CHtml::encode($data->employee_id); ?>
	<br />

	*/ ?>

</div>
