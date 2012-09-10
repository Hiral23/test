<?php

/**
 * This is the model class for table "employee_experience".
 *
 * The followings are the available columns in table 'employee_experience':
 * @property integer $employee_experience_id
 * @property string $employee_experience_organization_name
 * @property string $employee_experience_designation
 * @property string $employee_experience_from
 * @property string $employee_experience_to
 */
class EmployeeExperience extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return EmployeeExperience the static model class
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
		return 'employee_experience';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('employee_experience_organization_name, employee_experience_designation, employee_experience_from, employee_experience_to', 'required', 'message'=>''),
			array('employee_experience_organization_name', 'length', 'max'=>50),
			array('employee_experience_designation', 'length', 'max'=>25),

			// call validdate function
			array('employee_experience_to','validdate','message'=>'To Date Must be Greater Than From Date'),


			array('employee_experience_from','checkdate_2','message'=>'From Date Must be Less Than Current Date'),
			array('employee_experience_to','checkdate_1','message'=>'To Date Must be Less Than Current Date'),

			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('employee_experience_id, employee_experience_organization_name, employee_experience_designation, employee_experience_from, employee_experience_to', 'safe', 'on'=>'search'),
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
	/*
	public function checkdate($attribute,$params)
	{
		$my_date = date("Y-m-d");
		if(($this->employee_experience_to > $my_date) || ($this->employee_experience_from > $my_date))
		{
			$this->addError('employee_experience_from','From Date Must be Less Than Current Date');
			$this->addError('employee_experience_to','To Date Must be Less Than Current Date'); 
		}
		else
		{
			if( $this->employee_experience_to < $this->employee_experience_from)
			{
				$this->addError('employee_experience_to','To Date Must be Greater Than From Date');
			}
		}
		
		
	}*/
	public function checkdate_1($attribute,$params)
	{
		$my_date = date("Y-m-d");
		if($this->employee_experience_to > $my_date)
		{
			//$this->addError('employee_experience_from','From Date Must be Less Than Current Date');
			$this->addError('employee_experience_to','To Date Must be Less Than Current Date'); 
		}	
	}
	public function checkdate_2($attribute,$params)
	{
		$my_date = date("Y-m-d");
		if($this->employee_experience_from > $my_date)
		{
			$this->addError('employee_experience_from','From Date Must be Less Than Current Date');
			//$this->addError('employee_experience_to','To Date Must be Less Than Current Date'); 
		}	
	}
	public function validdate($attribute,$params)
	{
		
			if( $this->employee_experience_to < $this->employee_experience_from)
			{
				$this->addError('employee_experience_to','To Date Must be Greater Than From Date');
			}
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'employee_experience_id' => 'Employee Experience',
			'employee_experience_organization_name' => 'Organization Name',
			'employee_experience_designation' => 'Designation',
			'employee_experience_from' => 'Date From',
			'employee_experience_to' => 'Date To',
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

		$criteria->compare('employee_experience_id',$this->employee_experience_id);
		$criteria->compare('employee_experience_organization_name',$this->employee_experience_organization_name,true);
		$criteria->compare('employee_experience_designation',$this->employee_experience_designation,true);
		$criteria->compare('employee_experience_from',$this->employee_experience_from,true);
		$criteria->compare('employee_experience_to',$this->employee_experience_to,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
