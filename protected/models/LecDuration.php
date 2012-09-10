<?php

/**
 * This is the model class for table "lec_duration".
 *
 * The followings are the available columns in table 'lec_duration':
 * @property integer $id
 * @property integer $lecture
 * @property integer $duration
 * @property integer $timetable_id
 * @property integer $lec_duration_org_id
 * @property integer $created_by
 * @property string $creation_time
 */
class LecDuration extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return LecDuration the static model class
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
		return 'lec_duration';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('lecture, duration, timetable_id, lec_duration_org_id, created_by, creation_time', 'required'),
			array('lecture, duration, timetable_id, lec_duration_org_id, created_by', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, lecture, duration, timetable_id, lec_duration_org_id, created_by, creation_time', 'safe', 'on'=>'search'),
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
			'id' => 'ID',
			'lecture' => 'Lecture',
			'duration' => 'Duration',
			'timetable_id' => 'Timetable',
			'lec_duration_org_id' => 'Lec Duration Org',
			'created_by' => 'Created By',
			'creation_time' => 'Creation Time',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('lecture',$this->lecture);
		$criteria->compare('duration',$this->duration);
		$criteria->compare('timetable_id',$this->timetable_id);
		$criteria->compare('lec_duration_org_id',$this->lec_duration_org_id);
		$criteria->compare('created_by',$this->created_by);
		$criteria->compare('creation_time',$this->creation_time,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}