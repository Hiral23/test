<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_id')); ?>:</b>
	<?php echo CHtml::encode($data->subject_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('theory_credit')); ?>:</b>
	<?php echo CHtml::encode($data->theory_credit); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tutorial_credit')); ?>:</b>
	<?php echo CHtml::encode($data->tutorial_credit); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('practical_credit')); ?>:</b>
	<?php echo CHtml::encode($data->practical_credit); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_by')); ?>:</b>
	<?php echo CHtml::encode($data->created_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('creation_date')); ?>:</b>
	<?php echo CHtml::encode($data->creation_date); ?>
	<br />


</div>