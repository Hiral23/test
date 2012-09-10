public function beforeSave()
	{
		
		// for create
		if($this->isNewRecord)
            	{
               		$check=TimetableDetail::model()->findByAttributes(array('faculty_emp_id'=>$_REQUEST['faculty_emp_id'],'day'=>$_REQUEST['day'],'lec'=>$_REQUEST['lec']));
		
			  $checknext=TimetableDetail::model()->findByAttributes(array('faculty_emp_id'=>$_REQUEST['faculty_emp_id'],'day'=>$_REQUEST['day'],'lec'=>$_REQUEST['lec']-1));
			if($checknext)
			{
				$check_type=SubjectMaster::model()->findByAttributes(array('subject_master_id'=>$checknext->subject_id));
				if($check_type['subject_master_type_id']==2)
				{
					//$timetablename = TimeTable::model()->findByPk($check->timetable_id)->timetable_name;
					$this->addError('hello',"Already Assign lect in another timetable ");
					return false;
				}
				else
				{
					if($check)
					{
						$timetablename = TimeTable::model()->findByPk($check->timetable_id)->timetable_name;
						$this->addError('hello',"Already Assign lect in another timetable ".$timetablename);
						return false;
					}
					else
					{
		
						return true;
					}
				}	
			}
			else
			{
			
				if($check)
				{
					$timetablename = TimeTable::model()->findByPk($check->timetable_id)->timetable_name;
					$this->addError('hello',"Already Assign lect in another timetable ".$timetablename);
					return false;
				}
				else
				{
		
					return true;
				}
			}
			
		}			
         	 // for update
            	else
            	{			
			$check=TimetableDetail::model()->findByAttributes(array('timetable_id'=>$_REQUEST['timetableid'],'faculty_emp_id'=>$_REQUEST['faculty_emp_id'],'day'=>$_REQUEST['day'],'lec'=>$_REQUEST['lec']));
						
			if($_REQUEST['faculty_emp_id'] == $check['faculty_emp_id'] &&  $_REQUEST['day'] == $check['day'] && $_REQUEST['lec'] == $check['lec'] && $this->room_id == $check['room_id'] && $this->batch_id== $check['batch_id'] && $this->division_id == $check['division_id'])
                	{				
                    		return true;
                	}
                	else
                	{
				$check=TimetableDetail::model()->findByAttributes(array('faculty_emp_id'=>$_REQUEST['faculty_emp_id'],'day'=>$_REQUEST['day'],'lec'=>$_REQUEST['lec']));
				if($_REQUEST['faculty_emp_id'] == $check['faculty_emp_id'] &&  $_REQUEST['day'] == $check['day'] && $_REQUEST['lec'] == $check['lec'])
				{
					
					return true;
				}
				else
				{
					$timetablename = TimeTable::model()->findByPk($check->timetable_id)->timetable_name;
					$this->addError('hello',"Already Assign lect in another timetable ".$timetablename);	
					return false;
				}
			}//end else    
	        }//end update else
	}// end before save

}
