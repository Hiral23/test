<?php

$this->menu=array(
//	array('label'=>'List EmployeeTransaction', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('date_report'),'linkOptions'=>array('class'=>'Create','title'=>'Date Report')),
);

?>

<?php	
$j=0;
foreach ($fees_model as $i)	
{	$branch[$j]= Branch::model()->findByPk($i['fees_branch_id'])->branch_name;
	$sem[$j]=AcademicTermPeriod::model()->findByPk($i['fees_academic_term_id'])->academic_term_period;
	$name[$j]=AcademicTerm::model()->findByPk($i['fees_academic_term_name_id'])->academic_term_name;
	
	$student_quata = Yii::app()->db->createCommand("select count(*) as count,student_transaction_quota_id from student_transaction where student_transaction_branch_id=".$i['fees_branch_id']." and student_academic_term_period_tran_id=".$i['fees_academic_term_id']." and  	student_academic_term_name_id=".$i['fees_academic_term_name_id']." GROUP BY student_transaction_quota_id");
	$data=$student_quata->queryAll();
	$total[$j]=0;
	//print_r($data);
	foreach($data as $d)
	{

		//echo $d['student_transaction_student_id']."</br>";
		$amount=FeesMaster::model()->findByAttributes(array('fees_branch_id'=>$i['fees_branch_id'],'fees_academic_term_id'=>$i['fees_academic_term_id'],'fees_academic_term_name_id'=>$i['fees_academic_term_name_id'], 'fees_quota_id'=>$d['student_transaction_quota_id']));
		if($amount)
		{
			$total[$j]+=$d['count']*$amount->fees_master_total;
		}
	}


	$student_fees = Yii::app()->db->createCommand("select * from student_transaction where student_transaction_branch_id=".$i['fees_branch_id']." and student_academic_term_period_tran_id=".$i['fees_academic_term_id']." and  	student_academic_term_name_id=".$i['fees_academic_term_name_id']);
	$data_fees=$student_fees->queryAll();
	$receivedamount[$j]=0;
	
	foreach($data_fees as $s)
	{

		
		//$student_check=FeesPaymentTransaction::model()->findAllByAttributes(array('fees_student_id'=>$s['student_transaction_student_id']));

		$student_check=FeesPaymentTransaction::model()->findAllByAttributes(
								array(),
								$condition  = 'fees_student_id = :fees_student_id ',
								$params     = array(
									//':table_id' => $timetableid,
									':fees_student_id' => $s['student_transaction_student_id'],
									));
		
		if($student_check)
		{

			foreach($student_check as $r)
			{

			
				if($r['fees_payment_method_id']==1)
				{
					$receivedamount[$j]+=FeesPaymentCash::model()->findByPk($r['fees_payment_cash_cheque_id'])->fees_payment_cash_amount;
					//echo $receivedamount[$j]."</br>";
				}
				else
				{
					$receivedamount[$j]+=FeesPaymentCheque::model()->findByPk($r['fees_payment_cash_cheque_id'])->fees_payment_cheque_amount;
					//echo $receivedamount[$j]."</br>";

				}



			}
		}
	
	}

	$outstandingamount[$j]=$total[$j]-$receivedamount[$j];




$j++;
}

?>
<html>
<head>
</head>
<body>
	<table border=1 id="time-table-struc">
		<tr>
			<th>Sr.NO.</th>
			<th>Branch</th>
			<th>Semester</th>
			<th>Academic Term</th>			
			<th>Total Student</th>
			<th>Paid Student</th>
			<th>Unpaid Student</th>
			<th>Total Fees</th>
			<th>Fees Received</th>
			<th>Outstanding amount</th>
		
		
		
		
		</tr>		 

		<?php
		$j = 0;
		$k = 1;
		foreach ($fees_model as $i)	
		{?>
		<tr><td><?php echo $k; ?></td><td> <?php echo Branch::model()->findByPk($i['fees_branch_id'])->branch_name;?></td>
		<td><?php echo AcademicTermPeriod::model()->findByPk($i['fees_academic_term_id'])->academic_term_period;?></td>
		<td><?php echo $name[$j]=AcademicTerm::model()->findByPk($i['fees_academic_term_name_id'])->academic_term_name;?></td>
		<td><?php echo CHtml::link($mytotal[$j],array('feesPaymentTransaction/total','branch_id'=>$i['fees_branch_id'],'acm_id'=>$i['fees_academic_term_id'],'acm_name_id'=>$i['fees_academic_term_name_id']));?></td>
		<td><?php echo CHtml::link($mypaid[$j],array('feesPaymentTransaction/paid','branch_id'=>$i['fees_branch_id'],'acm_id'=>$i['fees_academic_term_id'],'acm_name_id'=>$i['fees_academic_term_name_id']));?></td>
		<td><?php echo CHtml::link($myunpaid[$j],array('feesPaymentTransaction/unpaid','branch_id'=>$i['fees_branch_id'],'acm_id'=>$i['fees_academic_term_id'],'acm_name_id'=>$i['fees_academic_term_name_id']));?></td>
		<td><?php echo $total[$j];?></td>		
		<td><?php echo $receivedamount[$j];?></td>
		<td><?php echo $outstandingamount[$j];?></td>
		<?php $j++; $k++; }?>
		
			
		</tr>
	</table> 
</body>
</html>
