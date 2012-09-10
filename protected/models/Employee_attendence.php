<?php

/**
 * This is the model class for table "employee_attendence".
 *
 * The followings are the available columns in table 'employee_attendence':
 * @property integer $employee_attendence_id
 * @property integer $employee_id
 * @property string $date
 * @property string $time1
 * @property string $time2
 * @property string $time3
 * @property string $time4
 * @property string $time5
 * @property string $time6
 * @property string $time7
 * @property string $time8
 * @property string $time9
 * @property string $time10
 * @property string $total_hour
 * @property string $overtime_hour
*@property integer $employee_attendence_organization_id
 */
class Employee_attendence extends CActiveRecord
{
	public $employee_first_name, $employee_attendance_card_id;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Employee_attendence the static model class
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
		return 'employee_attendence';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('csvfile', 'required'),
			array('employee_id,employee_attendence_organization_id','numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('employee_attendence_id, employee_id, date, time1, time2, time3, time4, time5, time6, time7, time8, time9, time10, total_hour,csvfile, overtime_hour,employee_attendence_organization_id, employee_first_name, employee_attendance_card_id', 'safe', 'on'=>'search'),
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
			'Rel_Emp_Info' => array(self::BELONGS_TO, 'EmployeeInfo', 'employee_id'),
			'Rel_Trans_Info' => array(self::BELONGS_TO, 'EmployeeInfo', 'employee_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'employee_attendence_id' => 'Employee Attendence',
			'employee_id' => 'Employee Attendance Card No',
			'employee_first_name'=>'Employee Name',
			'date' => 'Date',
			'time1' => 'IN',
			'time2' => 'OUT',
			'time3' => 'Time3',
			'time4' => 'Time4',
			'time5' => 'Time5',
			'time6' => 'Time6',
			'time7' => 'Time7',
			'time8' => 'Time8',
			'time9' => 'Time9',
			'time10' => 'Time10',
			'total_hour' => 'Total Hour',
			'overtime_hour' => 'Overtime Hour',
			'csvfile'=>'Upload File',
			'employee_attendence_organization_id'=>'Organization',
			'employee_attendance_card_id'=>'Card ID',
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
	
		$criteria->condition = 'employee_attendence_organization_id = :employee_attendence_organization_id';
	        $criteria->params = array(':employee_attendence_organization_id' => Yii::app()->user->getState('org_id'));

		$criteria->with = array('Rel_Emp_Info');
		$criteria->compare('employee_attendence_id',$this->employee_attendence_id);
		$criteria->compare('Rel_Emp_Info.employee_first_name',$this->employee_first_name,true);
		$criteria->compare('Rel_Emp_Info.employee_attendance_card_id',$this->employee_attendance_card_id,true);
		$criteria->compare('date',$this->date,true);
		$criteria->compare('employee_id',$this->employee_id);
		$criteria->compare('time1',$this->time1,true);
		$criteria->compare('time2',$this->time2,true);
		$criteria->compare('time3',$this->time3,true);
		$criteria->compare('time4',$this->time4,true);
		$criteria->compare('time5',$this->time5,true);
		$criteria->compare('time6',$this->time6,true);
		$criteria->compare('time7',$this->time7,true);
		$criteria->compare('time8',$this->time8,true);
		$criteria->compare('time9',$this->time9,true);
		$criteria->compare('time10',$this->time10,true);
		$criteria->compare('total_hour',$this->total_hour,true);
		$criteria->compare('overtime_hour',$this->overtime_hour,true);
		$criteria->compare('csvfile',$this->csvfile);
		$criteria->compare('employee_attendence_organization_id',$this->employee_attendence_organization_id);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>array(
				    'defaultOrder'=>'employee_attendence_id DESC',
				),

		));
	}
}
