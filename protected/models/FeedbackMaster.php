<?php

/**
 * This is the model class for table "feedback_master".
 *
 * The followings are the available columns in table 'feedback_master':
 * @property integer $id
 * @property string $feedback_start_date
 * @property string $feedback_end_date
 * @property string $feedback_name
 * @property integer $feedback_emp_id
 * @property integer $feedback_branch_id
 * @property integer $feedback_academic_term_id
 * @property integer $feedback_academic_term_period_id
 * @property integer $feedback_subject_id
 * @property integer $feedback_department_id
 * @property string $remark
 * @property integer $feedback_master_organization_id
 */
class FeedbackMaster extends CActiveRecord
{
	public $employee_first_name, $branch_name, $academic_term_name, $academic_term_period;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return FeedbackMaster the static model class
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
		return 'feedback_master';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('feedback_start_date,feedback_end_date,feedback_name, feedback_emp_id, feedback_branch_id, feedback_academic_term_id,feedback_academic_term_period_id,feedback_subject_id, feedback_department_id, remark', 'required','message'=>''),
			array('feedback_emp_id, feedback_branch_id, feedback_academic_term_id, feedback_subject_id, feedback_department_id,feedback_master_organization_id', 'numerical', 'integerOnly'=>true,'message'=>''),
			array('feedback_name', 'length', 'max'=>30),
			array('remark', 'length', 'max'=>50),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, feedback_start_date,feedback_end_date,feedback_name, feedback_emp_id, feedback_branch_id, feedback_academic_term_id,feedback_academic_term_period_id, feedback_subject_id, feedback_department_id, remark,  employee_first_name, branch_name, academic_term_name,feedback_master_organization_id, academic_term_period', 'safe', 'on'=>'search'),
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

			'Rel_emp_id' => array(self::BELONGS_TO, 'EmployeeInfo', 'feedback_emp_id'),
			'Rel_branch_id' => array(self::BELONGS_TO, 'Branch', 'feedback_branch_id'),
			'Rel_academic_term_id' => array(self::BELONGS_TO, 'AcademicTerm', 'feedback_academic_term_id'),
			'Rel_subject_id' => array(self::BELONGS_TO, 'SubjectMaster', 'feedback_subject_id'),
			'Rel_department_id' => array(self::BELONGS_TO, 'Department', 'feedback_department_id'),
			'Rel_academic_term_period_id' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'feedback_academic_term_period_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'feedback_start_date' => 'Start Date :',
			'feedback_end_date' => 'End Date :',
			'feedback_name' => 'Feedback :',
			'feedback_emp_id' => 'Employee :',
			'feedback_branch_id' => 'Branch :',
			'feedback_academic_term_id' => 'Academic Term :',
			'feedback_academic_term_period_id'=>'Academic Term Period:',
			'feedback_subject_id' => 'Subject :',
			'feedback_department_id' => 'Department :',
			'remark' => 'Remark :',
			'feedback_master_organization_id'=>'Organization:',
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
		
		
		$criteria->condition = 'feedback_master_organization_id = :feedback_master_organization_id';
	        $criteria->params = array(':feedback_master_organization_id' => Yii::app()->user->getState('org_id'));

		$criteria->with = array('Rel_emp_id','Rel_branch_id','Rel_academic_term_id','Rel_academic_term_period_id');
		$criteria->compare('Rel_emp_id.employee_first_name',$this->employee_first_name,true);
		$criteria->compare('Rel_branch_id.branch_name',$this->branch_name,true);
		$criteria->compare('Rel_academic_term_id.academic_term_name',$this->academic_term_name,true);
		$criteria->compare('Rel_academic_term_period_id.academic_term_period',$this->academic_term_period,true);

		$criteria->compare('id',$this->id);
		$criteria->compare('feedback_start_date',$this->feedback_start_date,true);
		$criteria->compare('feedback_end_date',$this->feedback_end_date,true);
		$criteria->compare('feedback_name',$this->feedback_name,true);
		$criteria->compare('feedback_emp_id',$this->feedback_emp_id);
		$criteria->compare('feedback_branch_id',$this->feedback_branch_id);
		$criteria->compare('feedback_academic_term_id',$this->feedback_academic_term_id);
		$criteria->compare('feedback_academic_term_period_id',$this->feedback_academic_term_period_id);
		$criteria->compare('feedback_subject_id',$this->feedback_subject_id);
		$criteria->compare('feedback_department_id',$this->feedback_department_id);
		$criteria->compare('remark',$this->remark,true);
		$criteria->compare('feedback_master_organization_id',$this->feedback_master_organization_id);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	public function my_search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		
		$criteria=new CDbCriteria;
		
		$my_date = date("Y-m-d");
		//echo $my_date;exit;
		//$criteria->condition = $this->feedback_end_date = $my_date;
		$criteria->condition = 'feedback_end_date >= :feedbackdate';
		$criteria->params = array(':feedbackdate' => $my_date);


		$criteria->with = array('Rel_emp_id','Rel_branch_id','Rel_academic_term_id','Rel_academic_term_period_id');
		$criteria->compare('Rel_emp_id.employee_first_name',$this->employee_first_name,true);
		$criteria->compare('Rel_branch_id.branch_name',$this->branch_name,true);
		$criteria->compare('Rel_academic_term_id.academic_terms_period_name',$this->academic_term_name,true);
		$criteria->compare('Rel_academic_term_period_id.academic_term_period',$this->academic_term_period,true);

		$criteria->compare('id',$this->id);
		$criteria->compare('feedback_start_date',$this->feedback_start_date,true);
		$criteria->compare('feedback_end_date',$this->feedback_end_date,true);
		$criteria->compare('feedback_name',$this->feedback_name,true);
		$criteria->compare('feedback_emp_id',$this->feedback_emp_id);
		$criteria->compare('feedback_branch_id',$this->feedback_branch_id);
		$criteria->compare('feedback_academic_term_id',$this->feedback_academic_term_id);
		$criteria->compare('feedback_subject_id',$this->feedback_subject_id);
		$criteria->compare('feedback_department_id',$this->feedback_department_id);
		$criteria->compare('remark',$this->remark,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
