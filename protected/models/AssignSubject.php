<?php

/**
 * This is the model class for table "assign_subject".
 *
 * The followings are the available columns in table 'assign_subject':
 * @property integer $assign_subject_id
 * @property string $subject_id
 * @property string $subject_faculty_id
 * @property integer $active
 * @property string $updated_date
 * @property integer $updated_user
 * @property integer $assign_subject_organization_id
 */
class AssignSubject extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AssignSubject the static model class
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
		return 'assign_subject';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('subject_id, subject_faculty_id, active', 'required','message'=>''),
			array('assign_subject_organization_id', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('assign_subject_id, subject_id, subject_faculty_id, active, updated_date, updated_user,assign_subject_organization_id', 'safe', 'on'=>'search'),
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
			'Rel_Emp_Id' => array(self::BELONGS_TO, 'EmployeeInfo', 'subject_faculty_id'),
			'Rel_sub' => array(self::BELONGS_TO, 'SubjectMaster', 'subject_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'assign_subject_id' => 'Assign Subject',
			'subject_id' => 'Subject :',
			'subject_faculty_id' => 'Subject Faculty :',
			'active' => 'Status :',
			'updated_date' => 'Updated Date :',
			'updated_user' => 'Updated User :',
			'assign_subject_organization_id' => 'organization',
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


		$criteria->condition = 'assign_subject_organization_id = :assign_subject_organization_id';
	        $criteria->params = array(':assign_subject_organization_id' => Yii::app()->user->getState('org_id'));	

		$criteria->compare('assign_subject_id',$this->assign_subject_id);
		$criteria->compare('subject_id',$this->subject_id,true);
		$criteria->compare('subject_faculty_id',$this->subject_faculty_id,true);
		$criteria->compare('active',$this->active);
		$criteria->compare('updated_date',$this->updated_date,true);
		$criteria->compare('updated_user',$this->updated_user);
		$criteria->compare('assign_subject_organization_id',$this->assign_subject_organization_id);
		
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
