<?php
class Calendar extends DPortlet
{

  protected function renderContent()
  {
	$this->widget('ext.simple-calendar.SimpleCalendarWidget');
  }
  
  protected function getTitle()
  {
    return 'Calendar';
  }
  
  protected function getClassName()
  {
    return __CLASS__;
  }
}
