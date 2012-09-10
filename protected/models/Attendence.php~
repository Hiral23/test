<?php

/**
 * This is the model class for table "attendence".
 *
 * The followings are the available columns in table 'attendence':
 * @property integer $id
 * @property integer $st_id
 * @property string $attendence
 * @property integer $shift_id
 * @property integer $sem_id
 * @property integer $branch_id
 * @property integer $div_id
 * @property integer $sub_id
 * @property integer $batch_id
 * @property integer $timetable_id
 * @property integer $attendence_organization_id
 * @property integer $employee_id
 */

class Attendence extends CActiveRecord
{
	public $branch_name,$division_name,$subject_master_name,$batch_name,$shift_type,$student_first_name,$academic_term_period,$academic_term_name;
	public $acdm_period,$acdm_name,$branch,$div,$batch,$subject,$employee_first_name,$student_enroll_no;
	public $start_date,$end_date; 
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Attendence the static model class
	 */

	public $stud_id;
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'attendence';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('st_id, shift_id, sem_id, sem_name_id, branch_id, employee_id, div_id, sub_id, attendence_date' ,'required', 'message'=>''),
			array('st_id, shift_id, sem_id, branch_id, div_id, sub_id, batch_id, timetable_id, attendence_organization_id, employee_id', 'numerical', 'integerOnly'=>true, 'message'=>''),
			array('attendence', 'required', 'on'=>'update'),
			array('attendence', 'length', 'max'=>10),
			array('attendence_date', 'length', 'max'=>10),
			array('student_enroll_no', 'length', 'max'=>15),
			array('student_enroll_no', 'required', 'on'=>'studentwise_report'),

			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, st_id, attendence, shift_id, sem_id, branch_id, employee_first_name, div_id, sub_id, batch_id, timetable_id, stud_id, branch_name, division_name, subject_master_name, batch_name, shift_type, student_first_name, student_enroll_no, academic_term_period, attendence_date,academic_term_name, attendence_organization_id', 'safe', 'on'=>'search'),
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

				'rel_atd_branch' => array(self::BELONGS_TO, 'Branch', 'branch_id'),
				'rel_atd_division'=>array(self::BELONGS_TO, 'Division','div_id'),
				'rel_atd_subject' => array(self::BELONGS_TO, 'SubjectMaster', 'sub_id'),
				'rel_atd_batch' => array(self::BELONGS_TO, 'Batch', 'batch_id'),
				'rel_atd_sem'=>array(self::BELONGS_TO, 'AcademicTermPeriod','sem_id'),
				'rel_atd_shift' => array(self::BELONGS_TO, 'Shift', 'shift_id'),
				'rel_atd_student' => array(self::BELONGS_TO, 'StudentInfo', 'st_id'),
				'rel_atd_employee' => array(self::BELONGS_TO, 'EmployeeInfo', 'employee_id'),
				'rel_atd_atn' => array(self::BELONGS_TO, 'AcademicTerm', 'sem_name_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'st_id' => 'St',
			'employee_id' =>'Faculty Name',
			'attendence' => 'Attendence',
			'shift_id' => 'Shift',
			'sem_id' => 'Academic Year',
			'sem_name_id' =>'Sem_name',
			'branch_id' => 'Branch',
			'div_id' => 'Div',
			'sub_id' => 'Sub',
			'batch_id' => 'Batch',
			'timetable_id' => 'Timetable',
			'attendence_date' => 'Date',
			'attendence_organization_id' => 'Attedence Organization',



			//for chart Report
			'acdm_period' => 'Academic Year',
			'acdm_name' => 'Academic Name',
			'branch' => 'Branch',
			'div' => 'Division',
			'batch' => 'Batch',
			'subject' => 'Subject',

			'employee_first_name'=>'Faculty Name',
		//for student report
			'start_date'=> 'Start-Date',
			'end_date'=> 'End-Date',

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

		
		$criteria->condition = 'attendence_organization_id= :attendence_organization_id';
	        $criteria->params = array(':attendence_organization_id' => Yii::app()->user->getState('org_id'));


		$criteria->compare('id',$this->id);
		$criteria->compare('st_id',$this->st_id);
		$criteria->compare('employee_id',$this->employee_id);

		$criteria->with = array('rel_atd_student','rel_atd_employee','rel_atd_subject','rel_atd_shift','rel_atd_sem','rel_atd_branch','rel_atd_atn');  /// Note: Define relation with related table....
		$criteria->compare('rel_atd_branch.branch_name',$this->branch_name,true);  // Note: Compare related table field with relation....

		$criteria->compare('rel_atd_student.student_enroll_no',$this->student_enroll_no,true);

		$criteria->compare('rel_atd_student.student_first_name',$this->student_first_name,true);  // Note: Compare related table field with relation....
		$criteria->compare('rel_atd_employee.employee_first_name',$this->employee_first_name,true);  // Note: Compare related table field with relation....
		$criteria->compare('rel_atd_shift.shift_type',$this->shift_type,true);  // Note: Compare related table field with relation....
		$criteria->compare('rel_atd_sem.academic_term_period',$this->academic_term_period,true);  // Note: Compare related table field with relation....\

		$criteria->compare('rel_atd_subject.subject_master_name',$this->subject_master_name,true);  // Note: Compare related table field with relation....

		$criteria->compare('rel_atd_atn.academic_term_name',$this->academic_term_name,true);  // Note: Compare related table field with relation....

		$criteria->compare('attendence',$this->attendence,true);
		//$criteria->compare('shift_id',$this->shift_id);
		$criteria->compare('sem_id',$this->sem_id);
		//$criteria->compare('branch_id',$this->branch_id);
		$criteria->compare('div_id',$this->div_id);
		$criteria->compare('sub_id',$this->sub_id);
		$criteria->compare('batch_id',$this->batch_id);
		$criteria->compare('timetable_id',$this->timetable_id);
		$criteria->compare('attendence_date',$this->attendence_date);
		$criteria->compare('attendence_organization_id',$this->attendence_organization_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>array(
				    'defaultOrder'=>'id DESC',
				),

		));
	}



	public function update_search($shift,$branch,$sem_name,$sem_period_id,$div_id,$sub_id)
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;



		$criteria->condition = 'shift_id = :shift AND branch_id = :branch AND sem_id = :sem_period AND sem_name_id = :sem_name' ;

		$criteria->params = array(':shift'=>$shift,':branch'=>$branch,':sem_name'=>$sem_name,':sem_period'=>$sem_period_id);



		$criteria->compare('id',$this->id);
		$criteria->compare('st_id',$this->st_id);



		$criteria->compare('attendence',$this->attendence,true);
		$criteria->compare('sem_id',$this->sem_id);
		//$criteria->compare('branch_id',$this->branch_id);
		$criteria->compare('div_id',$this->div_id);
		$criteria->compare('sub_id',$this->sub_id);
		$criteria->compare('batch_id',$this->batch_id);
		$criteria->compare('timetable_id',$this->timetable_id);
		$criteria->compare('attendence_date',$this->attendence_date);
		$criteria->compare('attendence_organization_id',$this->attendence_organization_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,'pagination'=>array('pageSize'=>1000,
		),
		));

	}


	
}
