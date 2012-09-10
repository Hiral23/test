<?php

/**
 * This is the model class for table "subject_guidelines".
 *
 * The followings are the available columns in table 'subject_guidelines':
 * @property integer $id
 * @property string $guideline
 * @property integer $subject_id
 * @property integer $created_by
 * @property string $creation_date
 */
class SubjectGuidelines extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return SubjectGuidelines the static model class
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
		return 'subject_guidelines';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('guideline, subject_id, created_by, creation_date', 'required','message'=>''),
			array('subject_id, created_by', 'numerical', 'integerOnly'=>true),
			array('guideline', 'length', 'max'=>200),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, guideline, subject_id, created_by, creation_date', 'safe', 'on'=>'search'),
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
				'rel_guideline_sub' => array(self::BELONGS_TO, 'SubjectMaster', 'subject_id'),
			
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'guideline' => 'Guideline',
			'subject_id' => 'Subject',
			'created_by' => 'Created By',
			'creation_date' => 'Creation Date',
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
		$criteria->compare('guideline',$this->guideline,true);
		$criteria->compare('subject_id',$this->subject_id);
		$criteria->compare('created_by',$this->created_by);
		$criteria->compare('creation_date',$this->creation_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	public function mysearch()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->condition = 'subject_id = :sub_id';
		$criteria->params = array(':sub_id' => $_REQUEST['id']);
		$criteria->compare('guideline',$this->guideline,true);
		$criteria->compare('subject_id',$this->subject_id);
		$criteria->compare('created_by',$this->created_by);
		$criteria->compare('creation_date',$this->creation_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
