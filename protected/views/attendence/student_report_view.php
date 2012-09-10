<?php
$this->breadcrumbs=array(
	'Attendences'=>array('admin'),
	'Studentwise Report',
);
?>
<h1><?php  echo '<span style=text-transform:capitalize;>'.strtolower($student_data->student_first_name).' attendance report</span>'; ?> </h1>
<?php
$i=0;
//echo $start;
//echo $end;
//exit;
echo '<table id="time-table-struc"><tr><th>Sr No.</th><th>Subject Name</th><th>Total</th><th>Present</th><th>Attendance %</th></tr>';
foreach($subject_data as $list) {
	
		$student_tran = StudentTransaction::model()->findByAttributes(array('student_transaction_student_id'=>$student_data->student_id));
		if($start==null && $end==null)
		{	
			$total_att = Attendence::model()->findAll(array('condition'=>'st_id='.$student_tran->student_transaction_id.' AND sub_id='.$list->subject_master_id));
			$pre_att = Attendence::model()->findAll(array('condition'=>'st_id='.$student_tran->student_transaction_id.' AND attendence="P"'.' AND sub_id='.$list->subject_master_id));
			
		}
		else
		{
			$total_att = Attendence::model()->findAll(array('condition'=>'st_id='.$student_tran->student_transaction_id.' AND sub_id='.$list->subject_master_id.' AND attendence_date BETWEEN "'.$start.'" AND "'.$end.'"'));
			$pre_att = Attendence::model()->findAll(array('condition'=>'st_id='.$student_tran->student_transaction_id.' AND attendence="P"'.' AND sub_id='.$list->subject_master_id.' AND attendence_date BETWEEN "'.$start.'" AND "'.$end.'"'));
		}		
		$percentage=0;
		$totalcount=count($total_att);
		$precount=count($pre_att);
		if(count($total_att)==0)
		{
			
			echo '<tr><td>'.++$i.'</td><td>'.$list->subject_master_name.'</td><td>'.count($total_att).'</td><td>'.count($pre_att).'</td><td>'.$percentage.'%</td></tr>';
			
		}
		else
		{
			$percentage = (count($pre_att)*100)/count($total_att);
			echo '<tr><td>'.++$i.'</td><td>'.$list->subject_master_name.'</td><td>'.count($total_att).'</td><td>'.count($pre_att).'</td></td><td>'.round($percentage,2).'%</td></tr>';
			
		}
		
		
	
}
echo '</table>';



?>
