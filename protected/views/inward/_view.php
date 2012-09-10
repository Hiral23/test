<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('invoice_description')); ?>:</b>
	<?php echo CHtml::encode($data->invoice_description); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('company_name')); ?>:</b>
	<?php echo CHtml::encode($data->company_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('invoice_no_dc')); ?>:</b>
	<?php echo CHtml::encode($data->invoice_no_dc); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('invoice_date')); ?>:</b>
	<?php echo CHtml::encode($data->invoice_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('received_date')); ?>:</b>
	<?php echo CHtml::encode($data->received_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sender_name')); ?>:</b>
	<?php echo CHtml::encode($data->sender_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('document')); ?>:</b>
	<?php echo CHtml::encode($data->document); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('document_desc')); ?>:</b>
	<?php echo CHtml::encode($data->document_desc); ?>
	<br />
<!--

	
	<b><?php echo CHtml::encode($data->getAttributeLabel('department')); ?>:</b>
	<?php echo CHtml::encode($data->department); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('photo')); ?>:</b>
	<?php echo CHtml::encode($data->photo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('document')); ?>:</b>
	<?php echo CHtml::encode($data->document); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('org_name_id')); ?>:</b>
	<?php echo CHtml::encode($data->org_name_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('no_of_packets')); ?>:</b>
	<?php echo CHtml::encode($data->no_of_packets); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('receiver_name')); ?>:</b>
	<?php echo CHtml::encode($data->receiver_name); ?>
	<br />-->

	 

</div>
