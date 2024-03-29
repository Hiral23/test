<?php

/**
 * This is the model class for table "student_docs".
 *
 * The followings are the available columns in table 'student_docs':
 * @property integer $student_docs_id
 * @property string $student_docs_desc
 * @property string $student_docs_path
 */
class StudentDocs extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return StudentDocs the static model class
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
		return 'student_docs';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('student_docs_path, student_docs_desc', 'required','message'=>""),
			array('student_docs_desc', 'length', 'max'=>50),
			array('student_docs_path', 'file', 'types'=>'jpeg, jpg, pdf, txt, doc, gif, png'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('student_docs_id, student_docs_desc, student_docs_path', 'safe', 'on'=>'search'),
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
			'student_docs_id' => 'Student Docs',
			'student_docs_desc' => 'Docs Description',
			'student_docs_path' => 'Docs Path',
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

		$criteria->compare('student_docs_id',$this->student_docs_id);
		$criteria->compare('student_docs_desc',$this->student_docs_desc,true);
		$criteria->compare('student_docs_path',$this->student_docs_path,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
