<?php

/**
 * This is the model class for table "employee_info".
 *
 * The followings are the available columns in table 'employee_info':
 * @property integer $employee_id
 * @property string $employee_no
 * @property string $employee_first_name
 * @property string $employee_middle_name
 * @property string $employee_last_name
 * @property string $employee_name_alias
 * @property string $employee_dob
 * @property string $employee_birthplace
 * @property string $employee_gender
 * @property string $employee_bloodgroup
 * @property string $employee_marital_status
 * @property string $employee_private_email
 * @property integer $employee_organization_mobile
 * @property integer $employee_private_mobile
 * @property string $employee_pancard_no
 * @property integer $employee_account_no
 * @property string $employee_joining_date
 * @property string $employee_probation_period
 * @property string $employee_hobbies
 * @property string $employee_technical_skills
 * @property string $employee_project_details
 * @property string $employee_curricular
 * @property string $employee_reference
 * @property string $employee_refer_designation
 * @property string $employee_guardian_name
 * @property string $employee_guardian_relation
 * @property string $employee_guardian_home_address
 * @property string $employee_guardian_qualification
 * @property string $employee_guardian_occupation
 * @property string $employee_guardian_income
 * @property string $employee_guardian_occupation_address
 * @property integer $employee_guardian_occupation_city
 * @property integer $employee_guardian_city_pin
 * @property integer $employee_guardian_phone_no
 * @property integer $employee_guardian_mobile1
 * @property integer $employee_guardian_mobile2
 * @property string $employee_faculty_of
 * @property string $employee_attendance_card_id
 * @property string $employee_tally_id
 * @property integer $employee_created_by
 * @property string $employee_creation_date
 *
 * The followings are the available model relations:
 * @property EmployeeTransaction[] $employeeTransactions
 */
class EmployeeInfo extends CActiveRecord
{

	const TYPE_MALE='Male';
	const TYPE_FEMALE='Female';
	const TYPE_APLUS='A+';
	const TYPE_AMINUS='A-';
	const TYPE_BPLUS='B+';
	const TYPE_BMINUS='B-';
	const TYPE_ABPLUS='AB+';
	const TYPE_ABMINUS='AB-';
	const TYPE_OPLUS='O+';
	const TYPE_OMINUS='O-';
	const TYPE_MARRIED='Married';
	const TYPE_UNMARRIED='Unmarried';

	/**
	 * Returns the static model of the specified AR class.
	 * @return EmployeeInfo the static model class
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
		return 'employee_info';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('employee_no, employee_first_name, employee_middle_name, employee_last_name, employee_dob, employee_gender, employee_bloodgroup, employee_marital_status, employee_private_email, employee_organization_mobile, employee_private_mobile, employee_joining_date, employee_guardian_name, employee_guardian_relation, employee_guardian_home_address, employee_guardian_income, employee_guardian_occupation_address, employee_guardian_occupation_city, employee_guardian_city_pin, employee_guardian_phone_no, employee_guardian_mobile1, employee_faculty_of, employee_attendance_card_id, employee_tally_id', 'required'),
			array('employee_organization_mobile, employee_private_mobile, employee_account_no, employee_guardian_occupation_city, employee_guardian_city_pin, employee_guardian_phone_no, employee_guardian_mobile1, employee_guardian_mobile2, employee_created_by', 'numerical', 'integerOnly'=>true , 'on'=>'transaction'),
			array('employee_no, employee_name_alias, employee_marital_status, employee_pancard_no, employee_probation_period', 'length', 'max'=>10),
			array('employee_first_name, employee_middle_name, employee_last_name, employee_birthplace, employee_reference, employee_guardian_name', 'length', 'max'=>25),
			array('employee_gender', 'length', 'max'=>6),
			array('employee_bloodgroup', 'length', 'max'=>3),
			array('employee_private_email', 'email'),
			array('employee_private_email', 'length', 'max'=>30),
			array('employee_private_mobile', 'length', 'max'=>10),
			array('employee_refer_designation, employee_guardian_relation', 'length', 'max'=>20),
			array('employee_guardian_home_address, employee_guardian_occupation_address', 'length', 'max'=>200),
			array('employee_guardian_qualification, employee_guardian_occupation, employee_faculty_of', 'length', 'max'=>50),
			array('employee_guardian_income, employee_attendance_card_id', 'length', 'max'=>15),
			array('employee_tally_id', 'length', 'max'=>9),
//			array('employee_creation_date', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('employee_id, employee_no, employee_first_name, employee_middle_name, employee_last_name, employee_name_alias, employee_dob, employee_birthplace, employee_gender, employee_bloodgroup, employee_marital_status, employee_private_email, employee_organization_mobile, employee_private_mobile, employee_pancard_no, employee_account_no, employee_joining_date, employee_probation_period, employee_hobbies, employee_technical_skills, employee_project_details, employee_curricular, employee_reference, employee_refer_designation, employee_guardian_name, employee_guardian_relation, employee_guardian_home_address, employee_guardian_qualification, employee_guardian_occupation, employee_guardian_income, employee_guardian_occupation_address, employee_guardian_occupation_city, employee_guardian_city_pin, employee_guardian_phone_no, employee_guardian_mobile1, employee_guardian_mobile2, employee_faculty_of, employee_attendance_card_id, employee_tally_id, employee_created_by, employee_creation_date', 'safe', 'on'=>'search'),
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
//			'employeeTransactions' => array(self::HAS_MANY, 'EmployeeTransaction', 'employee_transaction_employee_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'employee_id' => 'Employee',
			'employee_no' => 'Employee No',
			'employee_first_name' => 'Employee First Name',
			'employee_middle_name' => 'Employee Middle Name',
			'employee_last_name' => 'Employee Last Name',
			'employee_name_alias' => 'Employee Name Alias',
			'employee_dob' => 'Employee Dob',
			'employee_birthplace' => 'Employee Birthplace',
			'employee_gender' => 'Employee Gender',
			'employee_bloodgroup' => 'Employee Bloodgroup',
			'employee_marital_status' => 'Employee Marital Status',
			'employee_private_email' => 'Employee Private Email',
			'employee_organization_mobile' => 'Employee Organization Mobile',
			'employee_private_mobile' => 'Employee Private Mobile',
			'employee_pancard_no' => 'Employee Pancard No',
			'employee_account_no' => 'Employee Account No',
			'employee_joining_date' => 'Employee Joining Date',
			'employee_probation_period' => 'Employee Probation Period',
			'employee_hobbies' => 'Employee Hobbies',
			'employee_technical_skills' => 'Employee Technical Skills',
			'employee_project_details' => 'Employee Project Details',
			'employee_curricular' => 'Employee Curricular',
			'employee_reference' => 'Employee Reference',
			'employee_refer_designation' => 'Employee Refer Designation',
			'employee_guardian_name' => 'Employee Guardian Name',
			'employee_guardian_relation' => 'Employee Guardian Relation',
			'employee_guardian_home_address' => 'Employee Guardian Home Address',
			'employee_guardian_qualification' => 'Employee Guardian Qualification',
			'employee_guardian_occupation' => 'Employee Guardian Occupation',
			'employee_guardian_income' => 'Employee Guardian Income',
			'employee_guardian_occupation_address' => 'Employee Guardian Occupation Address',
			'employee_guardian_occupation_city' => 'Employee Guardian Occupation City',
			'employee_guardian_city_pin' => 'Employee Guardian City Pin',
			'employee_guardian_phone_no' => 'Employee Guardian Phone No',
			'employee_guardian_mobile1' => 'Employee Guardian Mobile1',
			'employee_guardian_mobile2' => 'Employee Guardian Mobile2',
			'employee_faculty_of' => 'Employee Faculty Of',
			'employee_attendance_card_id' => 'Employee Attendance Card',
			'employee_tally_id' => 'Employee Tally',
			'employee_created_by' => 'Employee Created By',
			'employee_creation_date' => 'Employee Creation Date',
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

		$criteria->compare('employee_id',$this->employee_id);
		$criteria->compare('employee_no',$this->employee_no,true);
		$criteria->compare('employee_first_name',$this->employee_first_name,true);
		$criteria->compare('employee_middle_name',$this->employee_middle_name,true);
		$criteria->compare('employee_last_name',$this->employee_last_name,true);
		$criteria->compare('employee_name_alias',$this->employee_name_alias,true);
		$criteria->compare('employee_dob',$this->employee_dob,true);
		$criteria->compare('employee_birthplace',$this->employee_birthplace,true);
		$criteria->compare('employee_gender',$this->employee_gender,true);
		$criteria->compare('employee_bloodgroup',$this->employee_bloodgroup,true);
		$criteria->compare('employee_marital_status',$this->employee_marital_status,true);
		$criteria->compare('employee_private_email',$this->employee_private_email,true);
		$criteria->compare('employee_organization_mobile',$this->employee_organization_mobile);
		$criteria->compare('employee_private_mobile',$this->employee_private_mobile);
		$criteria->compare('employee_pancard_no',$this->employee_pancard_no,true);
		$criteria->compare('employee_account_no',$this->employee_account_no);
		$criteria->compare('employee_joining_date',$this->employee_joining_date,true);
		$criteria->compare('employee_probation_period',$this->employee_probation_period,true);
		$criteria->compare('employee_hobbies',$this->employee_hobbies,true);
		$criteria->compare('employee_technical_skills',$this->employee_technical_skills,true);
		$criteria->compare('employee_project_details',$this->employee_project_details,true);
		$criteria->compare('employee_curricular',$this->employee_curricular,true);
		$criteria->compare('employee_reference',$this->employee_reference,true);
		$criteria->compare('employee_refer_designation',$this->employee_refer_designation,true);
		$criteria->compare('employee_guardian_name',$this->employee_guardian_name,true);
		$criteria->compare('employee_guardian_relation',$this->employee_guardian_relation,true);
		$criteria->compare('employee_guardian_home_address',$this->employee_guardian_home_address,true);
		$criteria->compare('employee_guardian_qualification',$this->employee_guardian_qualification,true);
		$criteria->compare('employee_guardian_occupation',$this->employee_guardian_occupation,true);
		$criteria->compare('employee_guardian_income',$this->employee_guardian_income,true);
		$criteria->compare('employee_guardian_occupation_address',$this->employee_guardian_occupation_address,true);
		$criteria->compare('employee_guardian_occupation_city',$this->employee_guardian_occupation_city);
		$criteria->compare('employee_guardian_city_pin',$this->employee_guardian_city_pin);
		$criteria->compare('employee_guardian_phone_no',$this->employee_guardian_phone_no);
		$criteria->compare('employee_guardian_mobile1',$this->employee_guardian_mobile1);
		$criteria->compare('employee_guardian_mobile2',$this->employee_guardian_mobile2);
		$criteria->compare('employee_faculty_of',$this->employee_faculty_of,true);
		$criteria->compare('employee_attendance_card_id',$this->employee_attendance_card_id,true);
		$criteria->compare('employee_tally_id',$this->employee_tally_id,true);
		$criteria->compare('employee_created_by',$this->employee_created_by);
		$criteria->compare('employee_creation_date',$this->employee_creation_date,true);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}

	public function getGenderOptions()
	{
		return array(
		self::TYPE_MALE=>'Male',
		self::TYPE_FEMALE=>'Female',
		);
	}

	public function getBloodGroup()
	{
		return array(
		self::TYPE_APLUS=>'A+',
		self::TYPE_AMINUS=>'A-',
		self::TYPE_BPLUS=>'B+',
		self::TYPE_BMINUS=>'B-',
		self::TYPE_ABPLUS=>'AB+',
		self::TYPE_ABMINUS=>'AB-',
		self::TYPE_OPLUS=>'O+',
		self::TYPE_OMINUS=>'O-',
		);
	}

	public function getMaritialStatus()
	{
		return array(
		self::TYPE_MARRIED=>'Married',
		self::TYPE_UNMARRIED=>'Unmarried',
		);
	}

}
