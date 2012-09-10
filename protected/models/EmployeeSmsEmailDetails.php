<?php

/**
 * This is the model class for table "employee_sms_email_details".
 *
 * The followings are the available columns in table 'employee_sms_email_details':
 * @property integer $employee_sms_email_id
 * @property integer $department_id
 * @property integer $branch_id
 * @property integer $shift_id
 * @property string $message_email_text
 * @property integer $email_sms_status
 * @property integer $created_by
 * @property string $creation_date
 * @property integer $employee_id
* @property integer $employee_sms_email_organization_id
 */
class EmployeeSmsEmailDetails extends CActiveRecord
{
	public $branch_name, $employee_first_name, $department_name,  $shift_type;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return EmployeeSmsEmailDetails the static model class
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
		return 'employee_sms_email_details';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('department_id, branch_id, shift_id, message_email_text, email_sms_status, created_by, creation_date, employee_id', 'required','message'=>""),
			array('department_id, branch_id, shift_id, email_sms_status, created_by, employee_id,employee_sms_email_organization_id', 'numerical', 'integerOnly'=>true,'message'=>""),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('employee_sms_email_id, department_id, branch_id, shift_id, message_email_text, email_sms_status, created_by, creation_date, employee_id, branch_name, employee_first_name, department_name,employee_sms_email_organization_id,  shift_type', 'safe', 'on'=>'search'),
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

			'rel_emp_sms_bid' =>array(self::BELONGS_TO, 'Branch', 'branch_id'),
			'rel_emp_sms_shiftid' =>array(self::BELONGS_TO, 'Shift', 'shift_id'),
			'rel_emp_sms_divid' => array(self::BELONGS_TO, 'Department', 'department_id'),
			'rel_emp_sms_info' => array(self::BELONGS_TO, 'EmployeeInfo', 'employee_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'employee_sms_email_id' => 'Employee Sms Email',
			'department_id' => 'Department',
			'branch_id' => 'Branch',
			'shift_id' => 'Shift',
			'message_email_text' => 'Message Email Text',
			'email_sms_status' => 'Email Sms Status',
			'created_by' => 'Created By',
			'creation_date' => 'Creation Date',
			'employee_id' => 'Employee',
			'employee_sms_email_organization_id'=>'Organization',
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

		$criteria->condition = 'employee_sms_email_organization_id = :employee_sms_email_organization_id';
	        $criteria->params = array(':employee_sms_email_organization_id' => Yii::app()->user->getState('org_id'));

		$criteria->with = array('rel_emp_sms_bid','rel_emp_sms_shiftid','rel_emp_sms_divid','rel_emp_sms_info');
		$criteria->compare('rel_emp_sms_bid.branch_name',$this->branch_name,true);
		$criteria->compare('rel_emp_sms_info.employee_first_name',$this->employee_first_name,true);
		$criteria->compare('rel_emp_sms_shiftid.shift_type',$this->shift_type,true);		
		$criteria->compare('rel_emp_sms_divid.department_name',$this->department_name,true);

		$criteria->compare('employee_sms_email_organization_id',$this->employee_sms_email_organization_id);
		$criteria->compare('employee_sms_email_id',$this->employee_sms_email_id);
		$criteria->compare('department_id',$this->department_id);
		$criteria->compare('branch_id',$this->branch_id);
		$criteria->compare('shift_id',$this->shift_id);
		$criteria->compare('message_email_text',$this->message_email_text,true);
		$criteria->compare('email_sms_status',$this->email_sms_status);
		$criteria->compare('created_by',$this->created_by);
		$criteria->compare('creation_date',$this->creation_date,true);
		$criteria->compare('employee_id',$this->employee_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
