<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'miscellaneous-fees-payment-transaction-form',
	'enableAjaxValidation'=>true,
)); ?>


<?php echo CHtml::button('Cash', array('submit' => array('/miscellaneousFeesPaymentCash/create', 'id'=>$_REQUEST['id']), 'class'=>'submit')); ?>
<?php echo CHtml::button('Cheque', array('submit' => array('/miscellaneousFeesPaymentCheque/create', 'id'=>$_REQUEST['id']), 'class'=>'submit')); ?>
<?php echo CHtml::button('Draft', array('submit' => array('/miscellaneousFeesPaymentCheque/draft', 'id'=>$_REQUEST['id']), 'class'=>'submit')); ?>

<?php $this->endWidget(); ?>

</div><!-- form -->
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h4 class="final_view_doc">Payment By Cash</h4>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'miscellaneous-fees-payment-cash-grid',
	'dataProvider'=>$cash_model->mysearch(),
	//'filter'=>$model,
	'columns'=>array(
		//'miscellaneous_fees_payment_cash_id',
		'miscellaneous_fees_payment_cash_amount',
		//'miscellaneous_fees_payment_cash_student_id',
		'miscellaneous_fees_payment_cash_receipt_id',
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}{print_rec}',
			'buttons'=>array(
				'delete' => array(
		                        'label'=>'Delete', // text label of the button
					'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCash/delete", array("id"=>$data->miscellaneous_fees_payment_cash_id))',
					),
		                'update' => array(
		                        'label'=>'Update', // text label of the button
					'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCash/update", array("id"=>$data->miscellaneous_fees_payment_cash_id))',
		                ),
				'print_rec' => array(
                                'label'=>'Print Receipt', // text label of the button
				'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCash/recpt_list", array("id"=>$data->miscellaneous_fees_payment_cash_id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/rs.png',  // image URL of the button. If not set or false, a text link is used
                               'options' => array('class'=>'fees-receipt', 'target'=>'_blank'), // HTML options for the button

                        ),
			),

		),
	),
)); ?>

<h4 class="final_view_doc">Payment By Cheque</h4>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'miscellaneous-fees-payment-cheque-grid',
	'dataProvider'=>$cheque_model->mysearch(),

//	'filter'=>$model,
	'columns'=>array(
	//	'miscellaneous_fees_payment_cheque_id',
		'miscellaneous_fees_payment_cheque_number',
		//'miscellaneous_fees_payment_cheque_date',
		array('name' => 'miscellaneous_fees_payment_cheque_date',		     
	              'value' => 'date_format(date_create($data->miscellaneous_fees_payment_cheque_date), "d-m-Y")',
                     ),
		//'miscellaneous_fees_payment_cheque_bank',
		array('name' => 'miscellaneous_fees_payment_cheque_bank',	     
	             'value' => 'BankMaster::model()->findByPk($data->miscellaneous_fees_payment_cheque_bank)->bank_short_name',
                     ),
		'miscellaneous_fees_payment_cheque_branch',
		'miscellaneous_fees_payment_cheque_amount',
		'miscellaneous_fees_payment_cheque_receipt_id',
		/*
		'miscellaneous_fees_payment_cheque_status',
		'miscellaneous_fees_payment_cheque_student_id',
		'miscellaneous_fees_payment_cheque_receipt_id',
		*/
		/*array(
                'name'=>'miscellaneous_fees_payment_cheque_draft_status',		
                'value'=> '$data->miscellaneous_fees_payment_cheque_draft_status==1 ?  "By Cheque" : "By Draft"',

        	),*/
		array(
			'class'=>'CButtonColumn',

			'template' => '{update}{delete}{print_rec}',

			'buttons'=>array(
				'delete' => array(
		                        'label'=>'Delete', // text label of the button
					'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCheque/delete", array("id"=>$data->miscellaneous_fees_payment_cheque_id))',
					),
		                'update' => array(
		                        'label'=>'Update', // text label of the button
					'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCheque/update", array("id"=>$data->miscellaneous_fees_payment_cheque_id))',
		                ),
				'print_rec' => array(
                                'label'=>'Print Receipt', // text label of the button
				'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCheque/recpt_list", array("id"=>$data->miscellaneous_fees_payment_cheque_id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/rs.png',  // image URL of the button. If not set or false, a text link is used
                               'options' => array('class'=>'fees-receipt', 'target'=>'_blank'),
				 // HTML options for the button

                        ),
			),
		),
	),
)); ?>
<?php //echo CHtml::button('grid', array('submit' => array('grid_col','id'=>$_REQUEST['id']))); ?>

<h4 class="final_view_doc">Payment By Draft</h4>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'miscellaneous-fees-payment-draft-grid',
	'dataProvider'=>$cheque_model->mydraftsearch(),
//	'filter'=>$model,
	'columns'=>array(
	//	'miscellaneous_fees_payment_cheque_id',
		'miscellaneous_fees_payment_cheque_number',
		//'miscellaneous_fees_payment_cheque_date',
		array('name' => 'miscellaneous_fees_payment_cheque_date',		     
	              'value' => 'date_format(date_create($data->miscellaneous_fees_payment_cheque_date), "d-m-Y")',
                     ),
		//'miscellaneous_fees_payment_cheque_bank',
		array('name' => 'miscellaneous_fees_payment_cheque_bank',	     
	             'value' => 'BankMaster::model()->findByPk($data->miscellaneous_fees_payment_cheque_bank)->bank_short_name',
                     ),
		'miscellaneous_fees_payment_cheque_branch',
		'miscellaneous_fees_payment_cheque_amount',
		//'miscellaneous_fees_payment_cheque_receipt_id',
		array('name' => 'miscellaneous_fees_payment_draft_receipt',	     
	             'value' => '$data->miscellaneous_fees_payment_cheque_receipt_id',
                     ),
		
	
		/*
		'miscellaneous_fees_payment_cheque_status',
		'miscellaneous_fees_payment_cheque_student_id',
		'miscellaneous_fees_payment_cheque_receipt_id',
		*/
		array(
			'class'=>'CButtonColumn',

			'template' => '{update}{delete}{print_rec}',
			'buttons'=>array(
				'delete' => array(
		                        'label'=>'Delete', // text label of the button
					'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCheque/delete", array("id"=>$data->miscellaneous_fees_payment_cheque_id))',
					),
		                'update' => array(
		                        'label'=>'Update', // text label of the button
					'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCheque/update", array("id"=>$data->miscellaneous_fees_payment_cheque_id))',
		                ),
				'print_rec' => array(
                                'label'=>'Print Receipt', // text label of the button
				'url'=>'Yii::app()->createUrl("miscellaneousFeesPaymentCheque/recpt_list", array("id"=>$data->miscellaneous_fees_payment_cheque_id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/rs.png',  // image URL of the button. If not set or false, a text link is used
                               'options' => array('class'=>'fees-receipt', 'target'=>'_blank'), // HTML options for the button

                        ),
			),
		),
	),
)); ?>



