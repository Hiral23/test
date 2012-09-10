<?php

/**
 * This is the model class for table "teaching_aids".
 *
 * The followings are the available columns in table 'teaching_aids':
 * @property integer $teaching_aids_id
 * @property string $teaching_aids_name
 * @property string $teaching_aids_alias
 * @property string $remarks
 * @property integer $teaching_aids_created_by
 * @property string $teaching_aids_created_date
 */
class Teaching_aids extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Teaching_aids the static model class
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
		return 'teaching_aids';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('teaching_aids_name, teaching_aids_alias, remarks, teaching_aids_created_by, teaching_aids_created_date', 'required','message'=>''),
			array('teaching_aids_created_by', 'numerical', 'integerOnly'=>true),
			array('teaching_aids_name, remarks', 'length', 'max'=>50),
			array('teaching_aids_alias', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('teaching_aids_id, teaching_aids_name, teaching_aids_alias, remarks, teaching_aids_created_by, teaching_aids_created_date', 'safe', 'on'=>'search'),
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
			'teaching_aids_id' => 'Teaching Aids',
			'teaching_aids_name' => 'Name',
			'teaching_aids_alias' => 'Alias Name',
			'remarks' => 'Remarks',
			'teaching_aids_created_by' => 'Created By',
			'teaching_aids_created_date' => 'Created Date',
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

		$criteria->compare('teaching_aids_id',$this->teaching_aids_id);
		$criteria->compare('teaching_aids_name',$this->teaching_aids_name,true);
		$criteria->compare('teaching_aids_alias',$this->teaching_aids_alias,true);
		$criteria->compare('remarks',$this->remarks,true);
		$criteria->compare('teaching_aids_created_by',$this->teaching_aids_created_by);
		$criteria->compare('teaching_aids_created_date',$this->teaching_aids_created_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
