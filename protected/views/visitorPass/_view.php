<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('pass_no')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->pass_no), array('view', 'id'=>$data->pass_no)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('in_date_time')); ?>:</b>
	<?php echo CHtml::encode($data->in_date_time); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('visitor_name')); ?>:</b>
	<?php echo CHtml::encode($data->visitor_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contact_person')); ?>:</b>
	<?php echo CHtml::encode($data->contact_person); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('purpose')); ?>:</b>
	<?php echo CHtml::encode($data->purpose); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('department')); ?>:</b>
	<?php echo CHtml::encode($data->department); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('address')); ?>:</b>
	<?php echo CHtml::encode($data->address); ?>
	<br />
	
	<b><?php echo CHtml::encode($data->getAttributeLabel('photo')); ?>:</b>
	   <?php echo CHtml::image(Yii::app()->baseUrl .'/protected/visitors_photo/' . $data->photo); ?>
	   

<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('company_represented')); ?>:</b>
	<?php echo CHtml::encode($data->company_represented); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('vehicle_no')); ?>:</b>
	<?php echo CHtml::encode($data->vehicle_no); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('no_of_persons')); ?>:</b>
	<?php echo CHtml::encode($data->no_of_persons); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('remark')); ?>:</b>
	<?php echo CHtml::encode($data->remark); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('photo')); ?>:</b>
	<?php echo CHtml::encode($data->photo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('age')); ?>:</b>
	<?php echo CHtml::encode($data->age); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gender')); ?>:</b>
	<?php echo CHtml::encode($data->gender); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('out_time')); ?>:</b>
	<?php echo CHtml::encode($data->out_time); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('batch_no')); ?>:</b>
	<?php echo CHtml::encode($data->batch_no); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('item_carring')); ?>:</b>
	<?php echo CHtml::encode($data->item_carring); ?>
	<br />

	*/ ?>

</div>
