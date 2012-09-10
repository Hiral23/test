<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_id')); ?>:</b>
	<?php echo CHtml::encode($data->subject_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('university_mark')); ?>:</b>
	<?php echo CHtml::encode($data->university_mark); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('midsem_mark')); ?>:</b>
	<?php echo CHtml::encode($data->midsem_mark); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('practical_mark')); ?>:</b>
	<?php echo CHtml::encode($data->practical_mark); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_by')); ?>:</b>
	<?php echo CHtml::encode($data->created_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('creation_date')); ?>:</b>
	<?php echo CHtml::encode($data->creation_date); ?>
	<br />


</div>