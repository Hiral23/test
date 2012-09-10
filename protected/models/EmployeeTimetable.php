<?php

/**
 * This is the model class for table "employee_timetable".
 *
 * The followings are the available columns in table 'employee_timetable':
 * @property integer $id
 * @property integer $employee_id
 * @property integer $timetable_id
 * @property integer $employee_timetable_organization_id
 */
class EmployeeTimetable extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return EmployeeTimetable the static model class
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
		return 'employee_timetable';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('employee_id, timetable_id', 'required'),
			array('employee_id, timetable_id,employee_timetable_organization_id', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, employee_id, timetable_id,employee_timetable_organization_id', 'safe', 'on'=>'search'),
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
			'employee_id' => 'Employee Name',
			'timetable_id' => 'Timetable',
			'employee_timetable_organization_id'=>'Employee TimeTable Organization'
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
		$criteria->compare('employee_id',$this->employee_id);
		$criteria->compare('timetable_id',$this->timetable_id);
		$criteria->compare('employee_timetable_organization_id',$this->employee_timetable_organization_id);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	public function beforeSave()
	{
		$check=EmployeeTimetable::model()->findByAttributes(array('employee_id'=>$this->employee_id,'timetable_id'=>$_REQUEST['id']));
		if($check)
		{
			  $this->addErrors(array(
                    'employee_id'=>'Employee already exist. Please select another employee',
					));
			return false;
		}
		else
		{
			return true;
		}
		
	}

}
