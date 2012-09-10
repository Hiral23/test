<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_type_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->subject_type_id), array('view', 'id'=>$data->subject_type_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_type_name')); ?>:</b>
	<?php echo CHtml::encode($data->subject_type_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_organization_id')); ?>:</b>
	<?php echo CHtml::encode($data->subject_organization_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_active')); ?>:</b>
	<?php echo CHtml::encode($data->subject_active); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_modified_date')); ?>:</b>
	<?php echo CHtml::encode($data->subject_modified_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_modified_user')); ?>:</b>
	<?php echo CHtml::encode($data->subject_modified_user); ?>
	<br />


</div>