
<html>

<head>
  <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/mfees_print.css" media="screen, print, projection" />
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/sal.css" media="screen, print, projection" />
</head>
<body>

	
<div class="rcpt_main">
	<div class="rcpt_header">
		 <div class="receipt-logo">
			<?php
			$test = Yii::app()->user->getState('org_id');
			if(isset($test))	
			{
			 echo CHtml::link(CHtml::image(Yii::app()->request->baseUrl."/organisation_logo/" .Organization::model()->findByPk(Yii::app()->user->getState('org_id'))->logo, "No Image"), array('/dashboard')); 
			}
		?>
		</div>
		
		<div id="rcpt_title" class="style1 misc_fees_recipt_title"> <?php $org_data = Organization::model()->findByPk(Yii::app()->user->getState('org_id')); ?><?php echo $org_data->organization_name;?></div>

		<div id="rcpt_address" class="style3 misc_fees_recipt_address"> <?php echo $org_data->address_line1.' '.City::model()->findByPk($org_data->city)->city_name.', '.State::model()->findByPk($org_data->state)->state_name.', '.Country::model()->findByPk($org_data->country)->name; ?> </div>


	</div>
  
	<div class="rcpt_content">
		<div class="id_date">
			<div class="rcpt_no">
			    <span class="style2 rcpt_title">Receipt No.</span>
			    <span class="rcpt_id"><?php echo $misc_fees_payment->miscellaneous_fees_payment_cheque_receipt_id; ?></span>
      			</div>	
			<div class="rcpt_date">
			    <span class="style2 rcpt_title">Date:</span>
			    <span class="rcpt_dt"><?php echo date('d/m/y');?></span>
	  		</div>
		</div>
		<div class="rcpt_name">
		  <span class="rcpt_title">Received with thanks from Mr./Mrs./Ms.</span>  
		  <span class="rcpt_s_name"><?php echo $stud_model->student_first_name.' '.$stud_model->student_middle_name.' '.$stud_model->student_last_name; ?></span>
		</div>
		<div class="rcpt_dtl">
		  <span class="rcpt_title style2">by Demand Draft/check no. </span>
		  <span class="rcpt_dd_no"><?php echo $misc_fees_payment->miscellaneous_fees_payment_cheque_number; ?></span>
		  <span class="style2 rcpt_title">dated</span>
		  <span class="rcpt_dd_dt"><?php echo date_format(date_create($misc_fees_payment->miscellaneous_fees_payment_cheque_date),"d-m-Y"); ?></span>
		  <span class="style2 rcpt_title">drawn on</span> 
		  <span class="rcpt_cash"><?php $bank_name = BankMaster::model()->findByPk($misc_fees_payment->miscellaneous_fees_payment_cheque_bank );
				echo $bank_name->bank_short_name; ?></span>    		
		</div>
		<div class="rcpt_sem_dtl">
		  <span class="style2 rcpt_title">of</span>
		  <span class="semester"><?php echo $acd_term->academic_terms_period_name; ?> </span>
		  <span class="style2 rcpt_title"> being payment towards</span>
		  <span class="style2 rcpt_title">Enrollment no. </span>
		  <span class="rno"><?php echo $stud_model->student_enroll_no;  ?></span>
		</div>
		<div class="rcpt_pd">
			<div class="rcpt_pd_left">
        			<div class="rcpt_amt_nmr style2">Rs.<?php echo $misc_fees_payment->miscellaneous_fees_payment_cheque_amount; ?>.00</div>
	  		</div>
			<div class="rcpt_pd_right">
        			<div class ="style9 rcpt_amt_for">FOR,<?php echo $org_data->organization_name;?></div>
  				<div class="rcpt_amt_tic">&nbsp;</div>
  	 		</div>
		</div>
	</div><!-- content div close -->
  
	<div class="rcpt_footer">
		<div class="rule1">* Subject to Ahmedabad Jurisdiction</div>
		<div class="rule2">* Payment by Cheque or Draft will be credited to your Account on Realisation.</div>
  	</div>
</div>


</body>
</html>
