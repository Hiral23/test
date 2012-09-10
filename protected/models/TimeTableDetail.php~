<?php

/**
 * This is the model class for table "time_table_detail".
 *
 * The followings are the available columns in table 'time_table_detail':
 * @property integer $timetable_detail_id
 * @property integer $subject_id
 * @property integer $faculty_emp_id
 * @property integer $branch_id
 * @property integer $acdm_period_id
 * @property integer $acdm_name_id
 * @property integer $room_id
 * @property integer $division_id
 * @property integer $batch_id
 * @property integer $created_by
 * @property string $creation_date
 * @property integer $time_table_detail_organization_id
 */
class TimeTableDetail extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return TimeTableDetail the static model class
	 */
	//public $divcreate,$batchcreate,$roomcreate;
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'time_table_detail';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('subject_id, faculty_emp_id, branch_id, acdm_period_id, acdm_name_id, room_id, subject_type, division_id, created_by, creation_date', 'required'),
			//array('faculty_emp_id, branch_id, acdm_period_id, acdm_name_id, room_id, division_id, batch_id, created_by, time_table_detail_organization_id', 'numerical', 'integerOnly'=>true),			
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('timetable_detail_id, subject_id, faculty_emp_id, branch_id, acdm_period_id, acdm_name_id, room_id, division_id, batch_id, created_by, creation_date,time_table_detail_organization_id', 'safe', 'on'=>'search'),
			//array('$divcreate, $batchcreate, $roomcreate','required'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'Rel_acdm_period_id' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'acdm_period_id'),	
			'Rel_acdm_name_id' => array(self::BELONGS_TO, 'AcademicTerm', 'acdm_name_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'timetable_detail_id' => 'Timetable Detail',
			'subject_id' => 'Subject Name',
			'faculty_emp_id' => 'Faculty Emp',
			'branch_id' => 'Branch Name',
			'acdm_period_id' => 'Acdm Period',
			'acdm_name_id' => 'Semester',
			'room_id' => 'Room Name',
			'subject_type' => 'Subject Type',
			'division_id' => 'Division Name',
			'batch_id' => 'Batch Name',
			'created_by' => 'Created By',
			'creation_date' => 'Creation Date',
			'duration' => 'Duration',
			'time_table_detail_organization_id'=>'TimeTable Details Organization'
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('timetable_detail_id',$this->timetable_detail_id);
		$criteria->compare('subject_id',$this->subject_id);
		$criteria->compare('faculty_emp_id',$this->faculty_emp_id);
		$criteria->compare('branch_id',$this->branch_id);
		$criteria->compare('acdm_period_id',$this->acdm_period_id);
		$criteria->compare('acdm_name_id',$this->acdm_name_id);
		$criteria->compare('room_id',$this->room_id);
		$criteria->compare('division_id',$this->division_id);
		$criteria->compare('batch_id',$this->batch_id);
		$criteria->compare('duration',$this->duration);
		$criteria->compare('created_by',$this->created_by);
		$criteria->compare('time_table_detail_organization_id',$this->time_table_detail_organization_id);
		$criteria->compare('creation_date',$this->creation_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	public function beforeSave()
	{

		$checknext=TimetableDetail::model()->findByAttributes(array('faculty_emp_id'=>$_REQUEST['faculty_emp_id'],'day'=>$_REQUEST['day'],'timetable_id'=>$_REQUEST['timetable_id'],'lec'=>$_REQUEST['lec']+1));
		$nooflec = TimeTable::model()->findByPk($_REQUEST['timetable_id'])->No_of_Lec;
		$checkbreak=NoOfBreakTable::model()->findByAttributes(array('timetable_id'=>$_REQUEST['timetable_id'],'after_lec_break'=>$_REQUEST['lec']));


		if($checkbreak &&$this->subject_type==2)
		{
			$this->addError('hello',"there is break after this lect.so you can't add practical here.");			
		}
		else
		{
			if($checknext)
			{
				if($this->subject_type==2)
				{
				
								
					$this->addError('hello',"Next cell has value so you can't add practical here.");	
					return false;	
				}
				else
				{
					if($nooflec==$_REQUEST['lec'] && $this->subject_type==2)
					{
						$this->addError('hello',"Next cell has value so you can't add practical here.");	
						return false;		
					}
					else
						return true;
				}
			
			}
			else
			{
				if($nooflec==$_REQUEST['lec'] && $this->subject_type==2)
				{
					$this->addError('hello1',"this is last lec, so you can't add practical here.");	
					return false;		
				}
				else
					return true;
			}
		}
	}// end before save

	
}
