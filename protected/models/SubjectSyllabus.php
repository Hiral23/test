<?php

/**
 * This is the model class for table "subject_syllabus".
 *
 * The followings are the available columns in table 'subject_syllabus':
 * @property integer $id
 * @property integer $sub_id
 * @property string $topic_name
 * @property string $topic_description
 * @property integer $hours
 * @property string $subject_syllabus_type
 * @property string $teaching_method
 * @property string $start_date
 * @property string $end_date
 * @property string $duration
 * @property string $actual_start_date
 * @property string $actual_end_date
 * @property string $actual_duration
 * @property string $actual_remarks
 * @property string $deliver_topic
 * @property string $created_by
 * @property string $created_date
 */
class SubjectSyllabus extends CActiveRecord
{
	public $subject_master_name,$teaching_methods_name;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return SubjectSyllabus the static model class
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
		return 'subject_syllabus';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('sub_id, topic_name, topic_description, hours, subject_syllabus_type, created_by, created_date','required','message'=>''),
			array('actual_remarks,actual_duration,actual_end_date,actual_start_date,deliver_topic','required','on'=>'actualcreate','message'=>''),
			array('teaching_method,start_date,end_date,duration','required','on'=>'facultyplancreate','message'=>''),
			array('sub_id, hours', 'numerical', 'integerOnly'=>true,'message'=>''),
			array('topic_name', 'length', 'max'=>100),
			array('created_by', 'length', 'max'=>40),
			array('hours', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, sub_id, topic_name, topic_description, hours, created_by, created_date, subject_master_name,teaching_methods_name', 'safe', 'on'=>'search'),
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

				'Rel_sub_nm' => array(self::BELONGS_TO, 'SubjectMaster', 'sub_id'),
				'Rel_sub_tid' => array(self::BELONGS_TO, 'Teaching_methods', 'teaching_method'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'sub_id' => 'Sub',
			'topic_name' => 'Topic Name',
			'topic_description' => 'Topic Description',
			'hours' => 'GTU Hours',
			'actual_duration' => 'Actual Faculty Hours',
			'created_by' => 'Created By',
			'created_date' => 'Created Date',
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
		$criteria->condition = 'sub_id = :sub_id';
		$criteria->params = array(':sub_id' => $_REQUEST['id']);

		$criteria->with = array('Rel_sub_nm','Rel_sub_tid');
		$criteria->compare('Rel_sub_nm.subject_master_name',$this->subject_master_name,true);
		$criteria->compare('Rel_sub_tid.teaching_methods_name',$this->teaching_methods_name,true);

		$criteria->compare('id',$this->id);
		$criteria->compare('sub_id',$this->sub_id);
		$criteria->compare('topic_name',$this->topic_name,true);
		$criteria->compare('topic_description',$this->topic_description,true);
		$criteria->compare('hours',$this->hours);
		$criteria->compare('actual_duration',$this->actual_duration,true);
		$criteria->compare('created_by',$this->created_by,true);
		$criteria->compare('created_date',$this->created_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
}
