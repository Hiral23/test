<?php
$this->breadcrumbs=array(
	'Chart Report',
);

echo CHtml::link('GO BACK',Yii::app()->createUrl('attendence/ChartReport')); 
?>
<h4 align=center><u> Attendance Chart Table</u></h4>
<table id="time-table-struc" align=center border="1" style="width:960px; font-size:12px;">
	<th  align=center >Branch Name\Semester</th>
<?php 
	
	$acdm_name=AcademicTerm::model()->findAll(array('condition'=>'academic_term_period_id='.$acdm_period.' and  academic_term_organization_id='.Yii::app()->user->getState('org_id')));
	//print_r($acdm_name);
	//exit;
	foreach($acdm_name as $ac){
?><th  align=center ><?php echo $ac['academic_term_name'];?></th>

<?php }?>
	
	<!--<th  align=center >Sem-1</th>
	<th  align=center >Sem-2</th>
	<th  align=center >Sem-3</th>
	<th  align=center >Sem-4</th>
	<th  align=center >Sem-5</th>
	<th  align=center >Sem-6</th>
	<th  align=center >Sem-7</th>
	<th  align=center >Sem-8</th>-->
	
<?php	
//echo $acdm_period;
$branch_name=array();
	$branch = Yii::app()->db->createCommand()
		->selectDistinct('branch_id')
		->from('attendence')
		//->order('branch_id DESC')
		->where('sem_id='.$acdm_period)						
		->queryAll();
		foreach($branch as $xvalue)
		{ 
			foreach($xvalue as $x)
			{
				$branch_name[] = Branch::model()->findByPk($x)->branch_name;		
				$branch_id[]=$x['branch_id'];					
				//echo $x['branch_id'];				
			}
		}
		

for($i=1;$i<=(count($branch_name));$i++) 
{	
	echo "<tr>";	
	
		
	     echo "<td  align=center>".$branch_name[$i-1]."</td>";	
	
	foreach($acdm_name as $ac1)
	{
		//$sem=AcademicTerm::model()->findByAttributes(array('academic_term_period_id'=>$acdm_period));
				
		echo "<td  align=center>".CHtml::link('View Chart',array('attendence/DisplayChart','sem_id'=>$acdm_period,'sem_name_id'=>$ac1['academic_term_id'],'branch_id'=>$branch_id[$i-1]), array('target'=>'_blank'))."</td>";
		
	}// j loop
	
	
}// i loop

	
echo "</table>";

?>

