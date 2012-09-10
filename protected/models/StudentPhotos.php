<?php

/**
 * This is the model class for table "student_photos".
 *
 * The followings are the available columns in table 'student_photos':
 * @property integer $student_photos_id
 * @property string $student_photos_desc
 * @property string $student_photos_path
 */
class StudentPhotos extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return StudentPhotos the static model class
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
		return 'student_photos';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
//			array('student_photos_path', 'required'),
//			array('student_photos_desc', 'length', 'max'=>50),
//			array('student_photos_path', 'length', 'max'=>150),
			array('student_photos_path', 'file', 'types'=>'jpg, jpeg, gif, png'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('student_photos_id, student_photos_desc, student_photos_path', 'safe', 'on'=>'search'),
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
			'student_photos_id' => 'Student Photos',
			'student_photos_desc' => 'Student Photos Desc',
			'student_photos_path' => 'Photos',
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

		$criteria->compare('student_photos_id',$this->student_photos_id);
		$criteria->compare('student_photos_desc',$this->student_photos_desc,true);
		$criteria->compare('student_photos_path',$this->student_photos_path,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
