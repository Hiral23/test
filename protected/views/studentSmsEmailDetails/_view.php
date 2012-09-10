<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('student_sms_email_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->student_sms_email_id), array('view', 'id'=>$data->student_sms_email_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('branch_id')); ?>:</b>
	<?php echo CHtml::encode($data->rel_stu_sms_bid->branch_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('academic_period_id')); ?>:</b>
	<?php echo CHtml::encode($data->rel_stud_acd_pname->academic_terms_period_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('academic_name_id')); ?>:</b>
	<?php echo CHtml::encode($data->rel_stud_acd_tname->academic_term_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('division_id')); ?>:</b>
	<?php echo CHtml::encode($data->rel_stu_sms_divid->division_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('student_id')); ?>:</b>
	<?php echo CHtml::encode($data->rel_stud_sms_info->student_first_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('message_email_text')); ?>:</b>
	<?php echo CHtml::encode($data->message_email_text); ?>
	<br />


	<b><?php echo CHtml::encode($data->getAttributeLabel('email_sms_status')); ?>:</b>
	<?php echo CHtml::encode($data->email_sms_status); ?>
	<br />
	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('created_by')); ?>:</b>
	<?php
		$create_user = User::model()->findbyPk($data->created_by);
	?>
	<?php echo CHtml::encode($data->created_by); ?>
	<br />*/?>
	<b><?php echo CHtml::encode($data->getAttributeLabel('creation_date')); ?>:</b>
	<?php echo CHtml::encode($data->creation_date); ?>
	<br />

	

</div>
