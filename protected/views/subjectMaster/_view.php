<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->subject_master_id), array('view', 'id'=>$data->subject_master_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_name')); ?>:</b>
	<?php echo CHtml::encode($data->subject_master_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_code')); ?>:</b>
	<?php echo CHtml::encode($data->subject_master_code); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_alias')); ?>:</b>
	<?php echo CHtml::encode($data->subject_master_alias); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_type_id')); ?>:</b>
	<?php echo CHtml::encode($data->Rel_sub_type->subject_type_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_organization_id')); ?>:</b>
	<?php echo CHtml::encode($data->Rel_org_id->organization_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_branch_id')); ?>:</b>
	<?php echo CHtml::encode($data->Rel_branch_id->branch_name); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_academic_terms_period_id')); ?>:</b>
	<?php echo CHtml::encode($data->subject_master_academic_terms_period_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_active')); ?>:</b>
	<?php echo CHtml::encode($data->subject_master_active); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_updated_date')); ?>:</b>
	<?php echo CHtml::encode($data->subject_master_updated_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_master_updated_user')); ?>:</b>
	<?php echo CHtml::encode($data->subject_master_updated_user); ?>
	<br />

	*/ ?>

</div>
