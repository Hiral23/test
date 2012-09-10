
<?php
		
		 $this->widget('zii.widgets.grid.CGridView', array(
		'id'=>'fees-payment-transaction-grid',
		'dataProvider'=>$fees_cheque->cheque_search(),
		'enableSorting'=>false,
		//'filter'=>$model,
		
		'columns'=>array(
			array(
			'header'=>'SN.',
			'class'=>'IndexColumn',
			),
			'fees_payment_cheque_id',
			'fees_payment_cheque_number',
			//'fees_payment_cheque_date',
			//'fees_payment_cheque_status',
			array(
             		   'name'=>'fees_payment_cheque_date',
               		   'type'=>'raw',		
                	   'value'=>'date_format(date_create($data->fees_payment_cheque_date), "d-m-Y")',
	        	),
			array(
			'name' => 'fees_payment_cheque_status',
			'value'=>'($data->fees_payment_cheque_status == 1) ?  "Return Cheque" : "Credit Cheque"',
                 	),
			//'fees_payment_cheque_bank',
			array(
			'name' => 'fees_payment_cheque_bank',
			'value' => 'BankMaster::model()->findByPk($data->fees_payment_cheque_bank)->bank_short_name',
			),
			'fees_payment_cheque_branch',
			'fees_payment_cheque_amount',
			array(
				'class'=>'CButtonColumn',
				'template' => '{view}{Add Fees}',
				'buttons'=>array(
				 'Add Fees' => array(
                                'label'=>'Cheque Return', // text label of the button
				'url'=>'Yii::app()->createUrl("FeesPaymentCheque/my_update", array("id"=>$data->fees_payment_cheque_id))',
                               	 'imageUrl'=> Yii::app()->baseUrl.'/images/add_cheque_return.png',  // image URL of the button. If not set or false, a text link is used
                              	 'options' => array('class'=>'fees'), // HTML options for the button
                        ),
				)				

			),
		),
	
	));
	

?>

