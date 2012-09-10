<?php

/**
 * This is the model class for table "give_feedback".
 *
 * The followings are the available columns in table 'give_feedback':
 * @property integer $id
 * @property integer $question_id
 * @property integer $rank
 * @property integer $feedback_master_id
* @property integer $give_feedback_organization_id
 */ 
class Givefeedback extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Givefeedback the static model class
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
		return 'give_feedback';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('question_id, rank, feedback_master_id', 'required'),
			array('question_id, rank, give_feedback_organization_id,feedback_master_id', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, question_id, give_feedback_organization_id,rank, feedback_master_id', 'safe', 'on'=>'search'),
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
			'question_id' => 'Question',
			'rank' => 'Rank',
			'feedback_master_id' => 'Feedback Master',
			'give_feedback_organization_id'=>'Organization:',
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
		$criteria->compare('question_id',$this->question_id);
		$criteria->compare('rank',$this->rank);
		$criteria->compare('feedback_master_id',$this->feedback_master_id);
		$criteria->compare('give_feedback_organization_id',$this->give_feedback_organization_id);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
