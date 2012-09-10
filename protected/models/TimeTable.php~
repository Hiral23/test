<?php

/**
 * This is the model class for table "time_table".
 *
 * The followings are the available columns in table 'time_table':
 * @property integer $timetable_id
 * @property integer $end_time
 * @property string $type
 * @property string $day
 * @property string $start_time
 * @property integer $time_table_organization_id
 */
class TimeTable extends CActiveRecord
{

	//const TYPE_LECTURE='Lecture';
	//const TYPE_BREAK='Break';
	/*const TYPE_MONDAY='Monday';
	const TYPE_TUESDAY='TUesday';
	const TYPE_WEDNESDAY='Wednesday';
	const TYPE_THURSDAY='Thursday';
	const TYPE_FRIDAY='Friday';
	const TYPE_SATURDAY='Saturday';*/
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return TimeTable the static model class
	 */
	public $branch_name,$academic_term_period,$academic_term_name,$faculty_id;
	public $timetable_acdm_period,$timetable_acdm_term,$timetable_branch,$timetable_division;
	
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'time_table';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('timetable_id, clg_start_time, No_of_Lec, lec_duration, timetable_acdm_term_period_id, faculty_id, timetable_name, created_by, creation_date, zero_lec', 'required','message'=>''),
			array('timetable_id, No_of_Lec,  No_Of_Break, timetable_branch_id, timetable_acdm_term_period_id, timetable_acdm_term_name_id, time_table_organization_id, timetable_acdm_period, timetable_acdm_term, timetable_branch, timetable_division', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('timetable_id, clg_start_time, No_of_Lec, No_Of_Break, timetable_branch_id, timetable_acdm_term_period_id, timetable_acdm_term_name_id, timetable_name, branch_name, academic_term_period, academic_term_name, time_table_organization_id', 'safe', 'on'=>'search'),
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
			'Rel_Branch' => array(self::BELONGS_TO, 'Branch', 'timetable_branch_id'),
			'Rel_AcademicTermPeriod' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'timetable_acdm_term_period_id'),
			'Rel_AcademicTerm' => array(self::BELONGS_TO, 'AcademicTerm', 'timetable_acdm_term_name_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'timetable_id' => 'Timetable',
			'clg_start_time' => 'College Start Time',
			'No_of_Lec' => 'No Of Lecture',
			'No_Of_Break' => 'No Of Break',
			'timetable_name'=>'Timetable Name',
			'timetable_branch_id'=>'Branch Name',
			'timetable_acdm_term_period_id'=>'Academic Period',
			'timetable_acdm_term_name_id'=>'Academic Name',
			'faculty_id'=>'Faculty Name',
			'time_table_organization_id'=>'Time Table Organization',
			'zero_lec'=>'Do you want to add 0 lecture?',
			'timetable_acdm_period'=>'Academic Term Period',
			'timetable_acdm_term'=>'Academic Term Name', 
			'timetable_branch'=>'Branch',
			'timetable_division'=>'Division'
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

		$criteria->condition = 'time_table_organization_id = :time_table_organization_id';
	        $criteria->params = array(':time_table_organization_id' => Yii::app()->user->getState('org_id'));


		$criteria->with = array('Rel_Branch','Rel_AcademicTermPeriod','Rel_AcademicTerm');
		
		$criteria->compare('timetable_id',$this->timetable_id);
		$criteria->compare('clg_start_time',$this->clg_start_time,true);
		$criteria->compare('No_of_Lec',$this->No_of_Lec);
		$criteria->compare('No_Of_Break',$this->No_Of_Break);
		$criteria->compare('timetable_name',$this->timetable_name);
		$criteria->compare('timetable_branch_id',$this->timetable_branch_id);
		$criteria->compare('timetable_acdm_term_period_id',$this->timetable_acdm_term_period_id);
		$criteria->compare('timetable_acdm_term_name_id',$this->timetable_acdm_term_name_id);
		
		$criteria->compare('time_table_organization_id',$this->time_table_organization_id);

		$criteria->compare('Rel_Branch.branch_name',$this->branch_name,true);
		$criteria->compare('Rel_AcademicTermPeriod.academic_term_period',$this->academic_term_period,true);
		$criteria->compare('Rel_AcademicTerm.academic_term_name',$this->academic_term_name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/*public function getScheduleOptions()
	{
		return array(
		self::TYPE_LECTURE=>'Lecture',
		self::TYPE_BREAK=>'Break',
		);
	}

	public function getDayOptions()
	{
		return array(
		self::TYPE_MONDAY=>'Monday',
		self::TYPE_TUESDAY=>'TUesday',
		self::TYPE_WEDNESDAY=>'Wednesday',
		self::TYPE_THURSDAY=>'Thursday',
		self::TYPE_FRIDAY=>'Friday',
		self::TYPE_SATURDAY=>'Saturday',
		);
	}*/
	
	
}
