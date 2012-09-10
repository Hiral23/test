<?php

/**
 * This is the model class for table "subject_examination_mark".
 *
 * The followings are the available columns in table 'subject_examination_mark':
 * @property integer $id
 * @property integer $subject_id
 * @property integer $university_mark
 * @property integer $midsem_mark
 * @property integer $practical_mark
 * @property integer $created_by
 * @property string $creation_date
 */
class SubjectExaminationMark extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return SubjectExaminationMark the static model class
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
		return 'subject_examination_mark';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('subject_id, university_mark, midsem_mark, practical_mark, created_by, creation_date', 'required','message'=>''),
			array('subject_id, university_mark, midsem_mark, practical_mark, created_by', 'numerical', 'integerOnly'=>true,'message'=>''),
			array('university_mark, midsem_mark, practical_mark','length','max'=>3,'message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, subject_id, university_mark, midsem_mark, practical_mark, created_by, creation_date', 'safe', 'on'=>'search'),
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
		
				'rel_exam_mark' => array(self::BELONGS_TO, 'SubjectMaster', 'subject_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'subject_id' => 'Subject',
			'university_mark' => 'University Mark',
			'midsem_mark' => 'Midsem Mark',
			'practical_mark' => 'Practical Mark',
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
		$criteria->compare('subject_id',$this->subject_id);
		$criteria->compare('university_mark',$this->university_mark);
		$criteria->compare('midsem_mark',$this->midsem_mark);
		$criteria->compare('practical_mark',$this->practical_mark);
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
		$criteria->compare('subject_id',$this->subject_id);
		$criteria->compare('university_mark',$this->university_mark);
		$criteria->compare('midsem_mark',$this->midsem_mark);
		$criteria->compare('practical_mark',$this->practical_mark);
		$criteria->compare('created_by',$this->created_by);
		$criteria->compare('creation_date',$this->creation_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
