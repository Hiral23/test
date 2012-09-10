<?php

/**
 * This is the model class for table "left_detained_pass_student_table".
 *
 * The followings are the available columns in table 'left_detained_pass_student_table':
 * @property integer $id
 * @property integer $student_id
 * @property integer $status_id
 * @property integer $sem
 * @property integer $academic_term_period_id
 * @property string $creation_date
 * @property integer $created_by
 * @property integer $oraganization_id
 */
class LeftDetainedPassStudentTable extends CActiveRecord
{
	public $student_first_name, $status_name, $academic_term_name, $academic_term_period;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return LeftDetainedPassStudentTable the static model class
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
		return 'left_detained_pass_student_table';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('student_id, status_id, sem, academic_term_period_id, creation_date, created_by, oraganization_id', 'required','message'=>""),
			array('student_id, status_id, sem, academic_term_period_id, created_by, oraganization_id', 'numerical', 'integerOnly'=>true,'message'=>""),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, student_id, status_id, sem, academic_term_period_id,academic_term_period,creation_date, created_by, oraganization_id, student_first_name, status_name, academic_term_name, academic_term_period', 'safe', 'on'=>'search'),
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

			'Rel_left_student_id' => array(self::BELONGS_TO, 'StudentInfo', 'student_id'),
			'Rel_left_status_id' => array(self::BELONGS_TO, 'Studentstatusmaster', 'status_id'),
			'Rel_left_sem_id' => array(self::BELONGS_TO, 'AcademicTerm', 'sem'),
			'Rel_left_academic_term_period_id' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'academic_term_period_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'student_id' => 'Student',
			'status_id' => 'Status',
			'sem' => 'Sem',
			'academic_term_period_id' => 'Academic Term Period',
			'creation_date' => 'Creation Date',
			'created_by' => 'Created By',
			'oraganization_id' => 'Oraganization',
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
		
		$criteria->with = array('Rel_left_student_id','Rel_left_status_id','Rel_left_sem_id','Rel_left_academic_term_period_id');
		$criteria->compare('id',$this->id);
		$criteria->compare('student_id',$this->student_id);
		$criteria->compare('status_id',$this->status_id);
		$criteria->compare('sem',$this->sem);
		$criteria->compare('academic_term_period_id',$this->academic_term_period_id);
		$criteria->compare('creation_date',$this->creation_date,true);
		$criteria->compare('created_by',$this->created_by);
		$criteria->compare('oraganization_id',$this->oraganization_id);
		
		$criteria->compare('Rel_left_student_id.student_first_name',$this->student_first_name,true);
		$criteria->compare('Rel_left_status_id.status_name',$this->status_name,true);
		$criteria->compare('Rel_left_sem_id.academic_term_name',$this->academic_term_name,true);
		$criteria->compare('Rel_left_academic_term_period_id.academic_term_period',$this->academic_term_period,true);
		

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
