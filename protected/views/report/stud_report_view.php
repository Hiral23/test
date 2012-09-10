<?php 
echo "</br>";
echo CHtml::link('GO BACK',Yii::app()->createUrl('report/StudInfoReport'),array()); 

if($selected_list)
{
	
//	print_r($selected_list);
	//echo CHtml::label('student first name','student_first_name');
	$student_info=new StudentInfo;
	
	echo "</br></br><h1>Student List of ".Branch::model()->findByPk($branch)->branch_name." (".AcademicTermPeriod::model()->findByPk($acdm_period)->academic_term_period.")</h1>";
	echo "</br>";
	echo "<table align=center style=\"width:300px;\" id=\"time-table-struc\" >";
	foreach($selected_list as $s)
	{
		echo "<th>".CHtml::activeLabel($student_info,$s)."</th>";
		
	}
	//print_r($selected_list);
	foreach($stud_data as $sd)
	{ 
		echo "<tr>";
		foreach($selected_list as $s)
		{
			echo "<td>".StudentInfo::model()->findByPk($sd->student_transaction_student_id)->$s."</td>";
			
		}
		echo "</tr>";
	}
	
echo "</table>";
}
else
{
	echo "No criteria selected";
} ?>
