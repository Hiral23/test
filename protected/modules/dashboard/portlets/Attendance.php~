<?php
class Attendance extends DPortlet
{

  protected function renderContent()
  {
		$id=Yii::app()->user->getState('org_id');
		if(!empty($id))
		{	

			$branch = Yii::app()->db->createCommand()
		        	->selectDistinct('branch_id')
				->from('attendence')
				//->order('branch_id DESC')
				->where('attendence_organization_id='.$id)
				->queryAll();
			$attendence = Yii::app()->db->createCommand()
		        	->select('count(attendence)')
				->from('attendence')
				->group('branch_id')
				->where('attendence="P" and attendence_organization_id='.$id)
				->queryAll();
			$xaxis = array();
			$yaxis = array();


		
			foreach($branch as $xvalue)
			{ 
				foreach($xvalue as $x)
				$xaxis[] = Branch::model()->findByPk($x)->branch_name;			
			}
			foreach($attendence as $yvalue)
			{ 	
				foreach($yvalue as $y)		
				$yaxis[] = $y;
			}
	if(!empty($branch)) {
	echo "<div id=\"container\" style=\"min-width: 00px; height: 230px; margin: 0 auto\"></div>";




for($i=0;$i<count($xaxis);$i++)
{
	$t=0;
	$n[$i][$t]=$xaxis[$i];
	$n[$i][$t+1]= $yaxis[$i];	
}
//print_r($n);
//print_r($m);
//$l = array_combine($n,$m);
//print_r($l);
$this->Widget('ext.highcharts.HighchartsWidget', array(
   'options'=>array(
	'chart'=> array(
		    'renderTo'=>'container',
		    'type'=> 'column'            
                       ),
        'title'=> array(
			'text'=> 'Branch Wise Attendence'
		      ),
	
	 'xAxis' => array(
        		 'categories' => $xaxis	
     			 ),
	'yAxis'=> array(
			'min'=> 0,
			'max'=> 100,
			'title'=> array(
				'text'=> 'Attendence'
				       )				
			),
	'legend'=> array(
			'layout'=> 'vertical',
			'backgroundColor'=> '#FFFFFF',
			'align'=> 'left',
			'verticalAlign'=> 'top',
			'x'=> 100,
			'y'=> 70,
			'floating'=> true,
			'shadow'=> true
			),
	'tooltip'=>array(
		        'formatter'=>'js:function() { return "<b>"+ this.x +"</b>: "+ this.y +" Per"; }'
		        ),
	'plotOptions'=> array (
			'column'=> array(
				'pointPadding'=> 0.2,
				'borderWidth'=> 0
			)
		),	
	'series' => array(
		    array('data'=>$n),
		)	
 )));
}
	
  }
}  
  protected function getTitle()
  {
    return 'Attendance';
  }
  
  protected function getClassName()
  {
    return __CLASS__;
  }

}
?>
