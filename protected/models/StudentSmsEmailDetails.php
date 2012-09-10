<?php

/**
 * This is the model class for table "student_sms_email_details".
 *
 * The followings are the available columns in table 'student_sms_email_details':
 * @property integer $student_sms_email_id
 * @property integer $branch_id
 * @property integer $academic_period_id
 * @property integer $academic_name_id
 * @property integer $division_id
 * @property integer $student_id
 * @property string $message_email_text
 * @property integer $email_sms_status
 * @property integer $created_by
 * @property string $creation_date
 * @property integer $shift_id
 */
class StudentSmsEmailDetails extends CActiveRecord
{
	public $branch_name, $student_first_name, $division_name,  $shift_type, $academic_terms_period_name, $academic_term_name;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return StudentSmsEmailDetails the static model class
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
		return 'student_sms_email_details';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('branch_id, academic_period_id, academic_name_id, division_id, student_id, message_email_text, email_sms_status, created_by, creation_date, shift_id', 'required','message'=>''),
			array('branch_id, academic_period_id, academic_name_id, division_id, student_id, email_sms_status, student_sms_email_organization_id,created_by, shift_id', 'numerical', 'integerOnly'=>true,'message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('student_sms_email_id, branch_id, academic_period_id, academic_name_id, division_id, student_id, message_email_text, email_sms_status, created_by, creation_date, shift_id, branch_name, student_first_name, division_name,  shift_type, academic_terms_period_name, academic_term_name,student_sms_email_organization_id', 'safe', 'on'=>'search'),
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

			'rel_stu_sms_bid' =>array(self::BELONGS_TO, 'Branch', 'branch_id'),
			'rel_stu_sms_shiftid' =>array(self::BELONGS_TO, 'Shift', 'shift_id'),
			'rel_stu_sms_divid' => array(self::BELONGS_TO, 'Division', 'division_id'),
			'rel_stud_sms_info' => array(self::BELONGS_TO, 'StudentInfo', 'student_id'),
			'rel_stud_acd_pname' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'academic_period_id'),
			'rel_stud_acd_tname' => array(self::BELONGS_TO, 'AcademicTerm', 'academic_name_id'),
			
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'student_sms_email_id' => 'Student Sms Email',
			'branch_id' => 'Branch',
			'academic_period_id' => 'Academic Period',
			'academic_name_id' => 'Academic Name',
			'division_id' => 'Division',
			'student_id' => 'Student',
			'message_email_text' => 'Message Email Text',
			'email_sms_status' => 'Email Sms Status',
			'created_by' => 'Created By',
			'creation_date' => 'Creation Date',
			'shift_id' => 'Shift',
			'student_sms_email_organization_id'=>'Organization',
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


		$criteria->condition = 'student_sms_email_organization_id= :student_sms_email_organization_id';
	        $criteria->params = array(':student_sms_email_organization_id' => Yii::app()->user->getState('org_id'));

		$criteria->with = array('rel_stu_sms_bid','rel_stu_sms_shiftid','rel_stu_sms_divid','rel_stud_sms_info','rel_stud_acd_pname','rel_stud_acd_tname');

		$criteria->compare('rel_stu_sms_bid.branch_name',$this->branch_name,true);
		$criteria->compare('rel_stud_sms_info.student_first_name',$this->student_first_name,true);
		$criteria->compare('rel_stu_sms_shiftid.shift_type',$this->shift_type,true);		
		$criteria->compare('rel_stu_sms_divid.division_name',$this->division_name,true);

		$criteria->compare('rel_stud_acd_pname.academic_terms_period_name',$this->academic_terms_period_name,true);
		$criteria->compare('rel_stud_acd_tname.academic_term_name',$this->academic_term_name,true);
		

		$criteria->compare('student_sms_email_id',$this->student_sms_email_id);
		$criteria->compare('branch_id',$this->branch_id);
		$criteria->compare('academic_period_id',$this->academic_period_id);
		$criteria->compare('academic_name_id',$this->academic_name_id);
		$criteria->compare('division_id',$this->division_id);
		$criteria->compare('student_id',$this->student_id);
		$criteria->compare('message_email_text',$this->message_email_text,true);
		$criteria->compare('email_sms_status',$this->email_sms_status);
		$criteria->compare('created_by',$this->created_by);
		$criteria->compare('creation_date',$this->creation_date,true);
		$criteria->compare('shift_id',$this->shift_id);
		$criteria->compare('student_sms_email_organization_id',$this->student_sms_email_organization_id);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
