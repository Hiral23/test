<?php
class Important_notice extends DPortlet
{

  protected function renderContent()
  {
    //echo 'Notice Content';
	/*
	$result=ImportantNotice::model()->findAll(array('limit'=>1,'order'=>'notice_id desc'));
	foreach($result as $data)
	*/
	$id=Yii::app()->user->getState('org_id');
	if(!empty($id))
	{
		$maxOrderNumber = Yii::app()->db->createCommand()
		->select('max(notice_id) as max')
		->from('important_notice')
		->where('notice_organization_id='.$id)
		->queryScalar();
		if($maxOrderNumber)
		{
			$notice_id = $maxOrderNumber;
			$notice = ImportantNotice::model()->findByPk($notice_id);
			$notice = $notice->notice;
			echo '<div "id"="notice3">';
			echo substr($notice,0,100)."...";
			echo '</div>';	
			echo CHtml::link('View All',array('/importantNotice/print_notice','id'=>$notice_id),array('id'=>'notice3'));
		}
	}
	else
	{
		echo '<div "id"="notice3">';
		echo '</div>';	
		
	}
	$config = array( 
        'scrolling' => 'no',
        'autoDimensions' => false,
	'width' => '600',
        'height' => '100',
	//'height' => 'auto', 
 //   'titleShow' => false,
       'overlayColor' => '#000',
       'padding' => '0',
       'showCloseButton' => true,
       'onClose' => function() {
                return window.location.reload();
        },

// change this as you need
);
$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'#notice3', 'config'=>$config));
}
  protected function getTitle()
  {
    return 'Important Notice';
  }
  
  protected function getClassName()
  {
    return __CLASS__;
  }
}
?>
