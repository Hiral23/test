<?php

/**
 * This is the model class for table "student_transaction".
 *
 * The followings are the available columns in table 'student_transaction':
 * @property integer $student_transaction_id
 * @property integer $student_transaction_user_id
 * @property integer $student_transaction_student_id
 * @property integer $student_transaction_branch_id
 * @property integer $student_transaction_category_id
 * @property integer $student_transaction_organization_id
 * @property integer $student_transaction_student_address_id
 * @property integer $student_transaction_nationality_id
 * @property integer $student_transaction_quota_id
 * @property integer $student_transaction_religion_id
 * @property integer $student_transaction_shift_id
 * @property integer $student_transaction_languages_known_id
 * @property integer $student_transaction_student_photos_id
 * @property integer $student_transaction_division_id
 * @property integer $student_transaction_batch_id
 * @property integer $student_academic_term_period_tran_id
 */
class StudentTransaction extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return StudentTransaction the static model class
	 */
	public $branch_name, $student_first_name, $division_name, $quota_name, $academic_terms_period_name, $academic_term_name,$student_enroll_no,$student_middle_name,$student_last_name,$academic_term_period;
	

	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'student_transaction';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('student_transaction_branch_id, student_transaction_category_id, student_transaction_nationality_id, student_transaction_quota_id, student_transaction_shift_id, student_academic_term_period_tran_id, student_academic_term_name_id,student_transaction_division_id', 'required','message'=>''),

			array('student_transaction_user_id, student_transaction_student_id, student_transaction_branch_id, student_transaction_category_id, student_transaction_organization_id, student_transaction_student_address_id, student_transaction_nationality_id, student_transaction_quota_id, student_transaction_religion_id, student_transaction_shift_id, student_transaction_languages_known_id, student_transaction_student_photos_id, student_transaction_division_id, student_transaction_batch_id, student_academic_term_period_tran_id, student_academic_term_name_id', 'numerical', 'integerOnly'=>true,'message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('student_transaction_id, student_transaction_user_id, student_transaction_student_id, student_transaction_branch_id, student_transaction_category_id, student_transaction_organization_id, student_transaction_student_address_id, student_transaction_nationality_id, student_transaction_quota_id, student_transaction_religion_id, student_transaction_shift_id, student_transaction_languages_known_id, student_transaction_student_photos_id, student_transaction_division_id, student_transaction_batch_id, student_academic_term_period_tran_id, student_academic_term_name_id, branch_name, student_first_name, division_name, quota_name, academic_terms_period_name, academic_term_name,student_enroll_no, student_middle_name, student_last_name,academic_term_period', 'safe', 'on'=>'search'),
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
			'Rel_Stud_Info' => array(self::BELONGS_TO, 'StudentInfo', 'student_transaction_student_id'),
			'Rel_Branch' => array(self::BELONGS_TO, 'Branch', 'student_transaction_branch_id'),
			'Rel_Category' => array(self::BELONGS_TO, 'Category', 'student_transaction_category_id'),
			'Rel_Quota' => array(self::BELONGS_TO, 'Quota', 'student_transaction_quota_id'),
			'Rel_Religion' => array(self::BELONGS_TO, 'Religion', 'student_transaction_religion_id'),
			'Rel_Shift' => array(self::BELONGS_TO, 'Shift', 'student_transaction_shift_id'),
			'Rel_Batch' => array(self::BELONGS_TO, 'Batch', 'student_transaction_batch_id'),
			'Rel_Nationality' => array(self::BELONGS_TO, 'Nationality', 'student_transaction_nationality_id'),
			'Rel_Department' => array(self::BELONGS_TO, 'Department', 'student_transaction_department_id'),
			'Rel_Organization' => array(self::BELONGS_TO, 'Organization', 'student_transaction_organization_id'),
			'Rel_Division' => array(self::BELONGS_TO, 'Division', 'student_transaction_division_id'),
			'Rel_Photos' => array(self::BELONGS_TO, 'StudentPhotos','student_transaction_student_photos_id'),
			'Rel_Student_Address' => array(self::BELONGS_TO, 'StudentAddress', 'student_transaction_student_address_id'),
			'Rel_student_academic_terms_period_name' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'student_academic_term_period_tran_id'),	

			'Rel_student_academic_terms_name' => array(self::BELONGS_TO, 'AcademicTerm', 'student_academic_term_name_id'),

			'Rel_language' => array(self::BELONGS_TO, 'Languages', 'student_transaction_languages_known_id'),		

			//'Rel_student_academic_terms_name' => array(self::BELONGS_TO, 'AcademicTerm', 'student_academic_term_name_id'),	
			'Rel_languages_known' => array(self::BELONGS_TO, 'LanguagesKnown','student_transaction_languages_known_id'),	

		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'student_transaction_id' => 'Student Transaction',
			'student_transaction_user_id' => 'Student Transaction User',
			'student_transaction_student_id' => 'Student Transaction Student',
			'student_transaction_branch_id' => 'Branch',
			'student_transaction_category_id' => 'Category',
			'student_transaction_organization_id' => 'Organization',
			'student_transaction_student_address_id' => 'Student Address',
			'student_transaction_nationality_id' => 'Nationality',
			'student_transaction_quota_id' => 'Quota',
			'student_transaction_religion_id' => 'Religion',
			'student_transaction_shift_id' => 'Shift',
			'student_transaction_languages_known_id' => 'Languages Known',
			'student_transaction_student_photos_id' => 'Student Photos',
			'student_transaction_division_id' => 'Division',
			'student_transaction_batch_id' => 'Batch',
			'student_academic_term_period_tran_id' => 'Term Period',

			'student_academic_term_name_id' => 'Semester Name',

			'student_roll_no' => 'Student Roll No',
			'student_merit_no' => 'Student Merit No',
			'student_enroll_no' => 'Student Enroll No',
			'student_college_id' => 'Student College',
			'student_first_name' => 'Student First Name',
			'student_middle_name' => 'Student Middle Name',
			'student_last_name' => 'Student Last Name',
			'student_father_name' => 'Student Father Name',
			'student_mother_name' => 'Student Mother Name',
			'student_adm_date' => 'Student Adm Date',
			'student_dob' => 'Student Dob',
			'student_birthplace' => 'Student Birthplace',
			'student_gender' => 'Student Gender',
			'student_guardian_name' => 'Student Guardian Name',
			'student_guardian_relation' => 'Student Guardian Relation',
			'student_guardian_qualification' => 'Student Guardian Qualification',
			'student_guardian_occupation' => 'Student Guardian Occupation',
			'student_guardian_income' => 'Student Guardian Income',
			'student_guardian_occupation_address' => 'Student Guardian Occupation Address',
			'student_guardian_occupation_city' => 'Student Guardian Occupation City',
			'student_guardian_city_pin' => 'Student Guardian City Pin',
			'student_guardian_home_address' => 'Student Guardian Home Address',
			'student_guardian_phoneno' => 'Student Guardian Phoneno',
			'student_guardian_mobile' => 'Student Guardian Mobile',
			'student_email_id_1' => 'Student Email Id 1',
			'student_email_id_2' => 'Student Email Id 2',
			'student_bloodgroup' => 'Student Bloodgroup',
			'student_tally_id' => 'Student Tally',
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

		$criteria->with = array('Rel_Branch' ,'Rel_Stud_Info', 'Rel_Division', 'Rel_Quota', 'Rel_student_academic_terms_period_name', 'Rel_student_academic_terms_name','Rel_language');

		$criteria->condition = 'student_transaction_organization_id = :student_transaction_org_id';
	        $criteria->params = array(':student_transaction_org_id' => Yii::app()->user->getState('org_id'));

		$criteria->compare('student_transaction_id',$this->student_transaction_id);
		$criteria->compare('student_transaction_user_id',$this->student_transaction_user_id);
		$criteria->compare('student_transaction_student_id',$this->student_transaction_student_id);
		$criteria->compare('student_transaction_branch_id',$this->student_transaction_branch_id);
		$criteria->compare('student_transaction_category_id',$this->student_transaction_category_id);
		$criteria->compare('student_transaction_organization_id',$this->student_transaction_organization_id);
		$criteria->compare('student_transaction_student_address_id',$this->student_transaction_student_address_id);
		$criteria->compare('student_transaction_nationality_id',$this->student_transaction_nationality_id);
		$criteria->compare('student_transaction_quota_id',$this->student_transaction_quota_id);
		$criteria->compare('student_transaction_religion_id',$this->student_transaction_religion_id);
		$criteria->compare('student_transaction_shift_id',$this->student_transaction_shift_id);
		$criteria->compare('student_transaction_languages_known_id',$this->student_transaction_languages_known_id);
		$criteria->compare('student_transaction_student_photos_id',$this->student_transaction_student_photos_id);
		$criteria->compare('student_transaction_division_id',$this->student_transaction_division_id);
		$criteria->compare('student_transaction_batch_id',$this->student_transaction_batch_id);
		$criteria->compare('student_academic_term_period_tran_id',$this->student_academic_term_period_tran_id);

		$criteria->compare('student_academic_term_name_id',$this->student_academic_term_name_id);

		$criteria->compare('Rel_Branch.branch_name',$this->branch_name,true);
		$criteria->compare('Rel_Stud_Info.student_first_name',$this->student_first_name,true);
		$criteria->compare('Rel_Stud_Info.student_enroll_no',$this->student_enroll_no,true);
		$criteria->compare('Rel_Stud_Info.student_middle_name',$this->student_middle_name,true);
		$criteria->compare('Rel_Stud_Info.student_last_name',$this->student_last_name,true);
		
		$criteria->compare('Rel_Division.division_name',$this->division_name,true);
		$criteria->compare('Rel_Quota.quota_name',$this->quota_name,true);
		$criteria->compare('Rel_student_academic_terms_period_name.academic_term_period',$this->academic_term_period,true);
		$criteria->compare('Rel_student_academic_terms_name.academic_term_name',$this->academic_term_name,true);


		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>array(
				    'defaultOrder'=>'student_transaction_id DESC',
				),
		));
	}

	public function findcity($id)
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.
		$name = City::model()->findByPk($id);
		return $name->city_name;
		
	}
	public function findcountry($id)
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.
		$name = Country::model()->findByPk($id);
		return $name->name;
		
	}

	public function findstate($id)
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.
		$name = State::model()->findByPk($id);
		return $name->state_name;
		
	}

}
