<?php
$this->breadcrumbs=array(
	'Fees Payment Transactions'=>array('/studentTransaction/admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'List FeesPaymentTransaction', 'url'=>array('index')),
//	array('label'=>'Manage FeesPaymentTransaction', 'url'=>array('admin')),
);

?>

<h1>Create Fees Payment Transaction</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model,'FeesMasterDetails'=>$FeesMasterDetails)); ?>
<?php
		$criteria = new CDbCriteria;
		$criteria -> condition = 'fees_student_id ='.$_REQUEST['id'];

		$listofid = FeesPaymentTransaction::model()->findAll($criteria);
		$cash_total = 0;
		$cheque_total = 0;
		$total = 0;
		foreach($listofid as $list)
			{
			if($list->fees_payment_method_id == 1)
				$cash_total = $cash_total + FeesPaymentCash::model()->findByPk($list->fees_payment_cash_cheque_id)->fees_payment_cash_amount;
			else
				$cheque_total = $cheque_total + FeesPaymentCheque::model()->findByPk($list->fees_payment_cash_cheque_id)->fees_payment_cheque_amount;
			}

			echo "<div class='total-amount'><h4>Total Paid Fees : <b>".$total = $cash_total + $cheque_total .'</b></h4></div>';

			Yii::app()->user->setState('student_paid_fees',$total);
?>

<h3> Previous Paid Fees by Cash Details </h3>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'fees-cash-grid',
	'dataProvider'=>$cash_model->cashsearch(),
//	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'fees_payment_transaction_id',
		//'fees_payment_master_id',
		array('name'=>'fees_payment_method_id',
			'value'=>'$data->Rel_pay_method->fees_payment_method_name',
		     ),
		array('name'=>'Amount',
			'value'=>'FeesPaymentCash::model()->findByPk($data->fees_payment_cash_cheque_id)->fees_payment_cash_amount',
		     ),
		//'fees_payment_cash_cheque_id',
		'fees_receipt_id',
		//'fees_payment',
		/*
		'fees_received_user_id',
		'fees_full_part_payment_id',
		'fees_student_id',*/

		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}{print_rec}',
			'buttons'=>array(
			'delete' => array(
                                'label'=>'Update Fees', // text label of the button
				'url'=>'Yii::app()->createUrl("feesPaymentTransaction/delete", array("id"=>$data->fees_payment_transaction_id))',
				'options'=>array('confirm'=>'Are you sure want to delete this record?'),
				'click'=>'js: function(){
				}',
			
				),
                        'update' => array(
                                'label'=>'Update Fees', // text label of the button
				'url'=>'Yii::app()->createUrl("feesPaymentTransaction/update_payfeescash", array("id"=>$data->fees_payment_cash_cheque_id,"feesid"=>'.$_REQUEST['id'].'))',
                        ),
                        'print_rec' => array(
                                'label'=>'Print Receipt', // text label of the button
				'url'=>'Yii::app()->createUrl("feesPaymentTransaction/print_cash_receipt", array("id"=>$data->fees_payment_transaction_id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/rs.png',  // image URL of the button. If not set or false, a text link is used
                               'options' => array('class'=>'fees-receipt', 'target'=>'_blank'), // HTML options for the button

                        ),

		   ),
		),
	),
)); ?>

<h3> Previous Paid Fees by Cheque Details </h3>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'fees-cheque-grid',
	'dataProvider'=>$cheque_model->chequesearch(),
//	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'fees_payment_transaction_id',
		//'fees_payment_master_id',
		array('name'=>'fees_payment_method_id',
			'value'=>'$data->Rel_pay_method->fees_payment_method_name',
		     ),

		array('name'=>'Amount',
			'value'=>'FeesPaymentCheque::model()->findByPk($data->fees_payment_cash_cheque_id)->fees_payment_cheque_amount',
		     ),


		//'fees_payment_cash_cheque_id',
		'fees_receipt_id',
		//'fees_payment',
		/*
		'fees_received_user_id',
		'fees_full_part_payment_id',
		'fees_student_id',*/

		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}{print_rec}',
			'buttons'=>array(
			'delete' => array(
                                'label'=>'Update Fees', // text label of the button
				'url'=>'Yii::app()->createUrl("feesPaymentTransaction/delete", array("id"=>$data->fees_payment_transaction_id))',
				'options'=>array('confirm'=>'Are you sure want to delete this record?'),
				'click'=>'js: function(){
				}',

				),
                        'update' => array(
                                'label'=>'Update Fees', // text label of the button
				'url'=>'Yii::app()->createUrl("feesPaymentTransaction/update_payfeescheque", array("id"=>$data->fees_payment_cash_cheque_id,"feesid"=>'.$_REQUEST['id'].'))',
                        ),

			'print_rec' => array(
                                'label'=>'Print Receipt', // text label of the button
				'url'=>'Yii::app()->createUrl("feesPaymentTransaction/print_cheque_receipt", array("id"=>$data->fees_payment_transaction_id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/rs.png',  // image URL of the button. If not set or false, a text link is used
                               'options' => array('class'=>'fees-receipt', 'target'=>'_blank'), // HTML options for the button

                        ),
		   ),
		),
	),
)); ?>



