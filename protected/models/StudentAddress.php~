<?php

/**
 * This is the model class for table "student_address".
 *
 * The followings are the available columns in table 'student_address':
 * @property integer $student_address_id
 * @property string $student_address_c_line1
 * @property string $student_address_c_line2
 * @property integer $student_address_c_country
 * @property integer $student_address_c_city
 * @property integer $student_address_c_pin
 * @property integer $student_address_c_state
 * @property string $student_address_p_line1
 * @property string $student_address_p_line2
 * @property integer $student_address_p_city
 * @property integer $student_address_p_pin
 * @property integer $student_address_p_state
 * @property integer $student_address_p_country
 * @property integer $student_address_phone
 * @property integer $student_address_mobile
 */
class StudentAddress extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return StudentAddress the static model class
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
		return 'student_address';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('student_address_c_line1, student_address_c_line2, student_address_c_country, student_address_c_city, student_address_c_pin, student_address_c_state, student_address_p_line1, student_address_p_line2, student_address_p_city, student_address_p_pin, student_address_p_state, student_address_p_country', 'required','message'=>''),
			array('student_address_c_country, student_address_c_city, student_address_c_pin, student_address_c_state, student_address_p_city, student_address_p_pin, student_address_p_state, student_address_p_country', 'numerical', 'integerOnly'=>true,'message'=>''),

			array(' student_address_c_pin,student_address_p_pin,student_address_phone, student_address_mobile', 'CRegularExpressionValidator', 'pattern'=>'/^([0-9]+)$/'),

			array('student_address_c_pin,student_address_p_pin,', 'length', 'max'=>8,'message'=>''),
			array('student_address_phone, student_address_mobile,', 'length', 'max'=>15,'message'=>''),

			array('student_address_c_line1, student_address_c_line2, student_address_p_line1, student_address_p_line2', 'length', 'max'=>100,'message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('student_address_id, student_address_c_line1, student_address_c_line2, student_address_c_country, student_address_c_city, student_address_c_pin, student_address_c_state, student_address_p_line1, student_address_p_line2, student_address_p_city, student_address_p_pin, student_address_p_state, student_address_p_country, student_address_phone, student_address_mobile', 'safe', 'on'=>'search'),
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
			'student_address_id' => 'Student Address',
			'student_address_c_line1' => 'Line1',
			'student_address_c_line2' => 'Line2',
			'student_address_c_country' => 'Country',
			'student_address_c_city' => 'City',
			'student_address_c_pin' => 'Pincode',
			'student_address_c_state' => 'State',
			'student_address_p_line1' => 'Line1',
			'student_address_p_line2' => 'Line2',
			'student_address_p_city' => 'City',
			'student_address_p_pin' => 'Pincode',
			'student_address_p_state' => 'State',
			'student_address_p_country' => 'Country',
			'student_address_phone' => 'Phone',
			'student_address_mobile' => 'Mobile',
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

		$criteria->compare('student_address_id',$this->student_address_id);
		$criteria->compare('student_address_c_line1',$this->student_address_c_line1,true);
		$criteria->compare('student_address_c_line2',$this->student_address_c_line2,true);
		$criteria->compare('student_address_c_country',$this->student_address_c_country);
		$criteria->compare('student_address_c_city',$this->student_address_c_city);
		$criteria->compare('student_address_c_pin',$this->student_address_c_pin);
		$criteria->compare('student_address_c_state',$this->student_address_c_state);
		$criteria->compare('student_address_p_line1',$this->student_address_p_line1,true);
		$criteria->compare('student_address_p_line2',$this->student_address_p_line2,true);
		$criteria->compare('student_address_p_city',$this->student_address_p_city);
		$criteria->compare('student_address_p_pin',$this->student_address_p_pin);
		$criteria->compare('student_address_p_state',$this->student_address_p_state);
		$criteria->compare('student_address_p_country',$this->student_address_p_country);
		$criteria->compare('student_address_phone',$this->student_address_phone);
		$criteria->compare('student_address_mobile',$this->student_address_mobile);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

}
