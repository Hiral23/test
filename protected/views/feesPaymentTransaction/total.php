<?php

$totalstudent=StudentTransaction::model()->findAllByAttributes( array(),$condition  = 'student_transaction_branch_id = :branch_id AND student_academic_term_period_tran_id = :acm_id AND student_academic_term_name_id = :acm_name_id',
        $params     = array(
                ':branch_id' => $_REQUEST['branch_id'], 
		':acm_id' => $_REQUEST['acm_id'], 
		':acm_name_id' => $_REQUEST['acm_name_id'], 
	));
echo CHtml::link('GO BACK',Yii::app()->createUrl('feesPaymentTransaction/mis_report')); 
echo "<h2 align='center'>Branch : ".Branch::model()->findByPk($_REQUEST['branch_id'])->branch_name."<br/>";
echo "Academic Term Name: ".AcademicTerm::model()->findByPk($_REQUEST['acm_name_id'])->academic_term_name."(".AcademicTermPeriod::model()->findByPk( $_REQUEST['acm_id'])->academic_term_period.")"."</h2>";

?>
<table id="time-table-struc">
<th>Sr.No.</th>
<th>En No.</th>
<th>Name</th>
<th>Quota</th>
<?php
$i=0;
foreach($totalstudent as $t)
{	



	
	echo "<tr><td>".++$i."</td>";
	echo "<td>".StudentInfo::model()->findByPk($t['student_transaction_student_id'])->student_enroll_no."</td><td>".StudentInfo::model()->findByPk($t['student_transaction_student_id'])->student_first_name." ".StudentInfo::model()->findByPk($t['student_transaction_student_id'])->student_middle_name." ".StudentInfo::model()->findByPk($t['student_transaction_student_id'])->student_last_name."</td><td>".Quota::model()->findByPk($t['student_transaction_quota_id'])->	quota_name."</td></tr>";
}
	
?></table>
