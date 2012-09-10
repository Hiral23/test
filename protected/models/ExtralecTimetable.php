<?php

/**
 * This is the model class for table "extralec_timetable".
 *
 * The followings are the available columns in table 'extralec_timetable':
 * @property integer $extratimetable_id
 * @property integer $timetable_id
 * @property integer $faculty_id
 * @property integer $branch_id
 * @property integer $day
 * @property integer $day_name
 * @property integer $room_id
 * @property integer $acdm_period_id
 * @property integer $acdm_name_id
 */
class ExtralecTimetable extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return ExtralecTimetable the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'extralec_timetable';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('timetable_id, faculty_id, branch_id, day, division_id, room_id, subject_id, lec_start_time, lec_end_time', 'required'),
			array('extratimetable_id, timetable_id, faculty_id, branch_id, division_id, room_id, subject_id, acdm_period_id, acdm_name_id', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('extratimetable_id, timetable_id, faculty_id, branch_id, day, day_name, division_id, room_id, subject_id, lec_start_time, lec_end_time', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'timetable_id' => 'Timetable',
			'faculty_id' => 'Faculty',
			'branch_id' => 'Branch',
			'day' => 'Day',
			'division_id' => 'Division',
			'room_id' => 'Room',
			'subject_id' => 'Subject',
			'day_name' => 'day',
			'lec_start_time' => 'Lec Start Time',
			'lec_end_time' => 'Lec End Time',
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

		$criteria->condition = 'timetable_id = :timetable_id';
	        $criteria->params = array(':timetable_id' => $_REQUEST['id']);		

		$criteria->compare('extratimetable_id',$this->extratimetable_id);
		$criteria->compare('timetable_id',$this->timetable_id);
		$criteria->compare('faculty_id',$this->faculty_id);
		$criteria->compare('branch_id',$this->branch_id);
		$criteria->compare('day',$this->day);
		$criteria->compare('division_id',$this->division_id);
		$criteria->compare('room_id',$this->room_id);
		$criteria->compare('subject_id',$this->subject_id);
		$criteria->compare('day_name',$this->day_name);
		$criteria->compare('lec_start_time',$this->lec_start_time);
		$criteria->compare('lec_end_time',$this->lec_end_time);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}