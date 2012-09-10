<?php

/**
 * This is the model class for table "subject_refbook".
 *
 * The followings are the available columns in table 'subject_refbook':
 * @property integer $id
 * @property integer $sub_id
 * @property integer $isbn_no
 * @property string $title
 * @property string $photo
 * @property string $created_by
 * @property string $created_date
 * @property string $subject_refbook_type
 */
class SubjectRefbook extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return SubjectRefbook the static model class
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
		return 'subject_refbook';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('sub_id, isbn_no, title, created_by, created_date,subject_refbook_type','required','message'=>""),
			array('sub_id', 'numerical', 'integerOnly'=>true),
			array('title, photo, created_by', 'length', 'max'=>100),
			array('isbn_no','length', 'max'=>30,'message'=>""),
			array('photo', 'file', 'types'=>'jpg, jpeg, gif, png'),
			//array('photo','allowEmpty'=>true,'message'=>""),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, sub_id, isbn_no, title, created_by, created_date', 'safe', 'on'=>'search'),
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
			'sub_id' => 'Sub',
			'isbn_no' => 'ISBN No',
			'title' => 'Title',
			'photo' => 'Photo',	
			'created_by' => 'Created By',
			'created_date' => 'Created Date',
			
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
		$criteria->condition = 'sub_id = :sub_id';
		$criteria->params = array(':sub_id' => $_REQUEST['id']);

		$criteria->compare('id',$this->id);
		$criteria->compare('sub_id',$this->sub_id);
		$criteria->compare('isbn_no',$this->isbn_no);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('created_by',$this->created_by,true);
		$criteria->compare('created_date',$this->created_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
