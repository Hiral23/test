<?php

/**
 * This is the model class for table "subject_type".
 *
 * The followings are the available columns in table 'subject_type':
 * @property integer $subject_type_id
 * @property string $subject_type_name
 * @property integer $subject_organization_id
 * @property integer $subject_active
 * @property string $subject_modified_date
 * @property integer $subject_modified_user
 */
class SubjectType extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return SubjectType the static model class
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
		return 'subject_type';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('subject_type_name, subject_organization_id, subject_active', 'required','message'=>''),
			array('subject_organization_id, subject_active, subject_modified_user', 'numerical', 'integerOnly'=>true),
			array('subject_type_name', 'length', 'max'=>50),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('subject_type_id, subject_type_name, subject_organization_id, subject_active, subject_modified_date, subject_modified_user', 'safe', 'on'=>'search'),
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
			'Rel_org_id' => array(self::BELONGS_TO, 'Organization', 'subject_organization_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'subject_type_id' => 'Subject ID :',
			'subject_type_name' => 'Subject Type :',
			'subject_organization_id' => 'Organization :',
			'subject_active' => 'Status :',
			'subject_modified_date' => 'Creation Date :',
			'subject_modified_user' => 'Created By :',
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

//		$criteria->condition = 'subject_organization_id = :subject_org_id';
//	        $criteria->params = array(':subject_org_id' => Yii::app()->user->getState('org_id'));

		$criteria->compare('subject_type_id',$this->subject_type_id);
		$criteria->compare('subject_type_name',$this->subject_type_name,true);
		$criteria->compare('subject_organization_id',$this->subject_organization_id);
		$criteria->compare('subject_active',$this->subject_active);
		$criteria->compare('subject_modified_date',$this->subject_modified_date,true);
		$criteria->compare('subject_modified_user',$this->subject_modified_user);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	private static $_items=array();

        public static function items()
        {
            if(isset(self::$_items))
                self::loadItems();
            return self::$_items;
        }

    public static function item($code)
    {
        if(!isset(self::$_items))
            self::loadItems();
        return isset(self::$_items[$code]) ? self::$_items[$code] : false;
    }

    private static function loadItems()
    {
        self::$_items=array();
        $models=self::model()->findAll();
        foreach($models as $model)
            self::$_items[$model->subject_type_id]=$model->subject_type_name;
    }
}
