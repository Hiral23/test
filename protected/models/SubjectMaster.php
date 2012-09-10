<?php

/**
 * This is the model class for table "subject_master".
 *
 * The followings are the available columns in table 'subject_master':
 * @property integer $subject_master_id
 * @property string $subject_master_name
 * @property string $subject_master_code
 * @property string $subject_master_alias
 * @property integer $subject_master_type_id
 * @property integer $subject_master_organization_id
 * @property integer $subject_master_branch_id
 * @property integer $subject_master_academic_terms_period_id
 * @property integer $subject_master_academic_terms_name_id
 * @property integer $subject_master_active
 * @property string $subject_master_updated_date
 * @property integer $subject_master_updated_user
 */
class SubjectMaster extends CActiveRecord
{
	public $subject_type_name, $branch_name, $academic_terms_period_name, $academic_term_name;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return SubjectMaster the static model class
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
		return 'subject_master';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('subject_master_name, subject_master_code, subject_master_alias, subject_master_type_id, subject_master_organization_id, subject_master_branch_id, subject_master_academic_terms_period_id, subject_master_academic_terms_name_id, subject_master_active, subject_master_color_code', 'required','message'=>''),
			array('subject_master_type_id, subject_master_organization_id, subject_master_branch_id, subject_master_academic_terms_period_id, subject_master_academic_terms_name_id, subject_master_active, subject_master_updated_user', 'numerical', 'integerOnly'=>true),

			array('subject_master_name', 'length', 'max'=>50),
			array('subject_master_code, subject_master_alias', 'length', 'max'=>15),
			array('subject_master_color_code', 'length', 'max'=>7),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('subject_master_id, subject_master_name, subject_master_code, subject_master_alias, subject_master_type_id, subject_master_organization_id, subject_master_branch_id, subject_master_academic_terms_period_id, subject_master_academic_terms_name_id, subject_master_active, subject_master_updated_date, subject_master_updated_user , subject_type_name, branch_name, academic_terms_period_name, academic_term_name', 'safe', 'on'=>'search'),
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
			'Rel_sub_type' => array(self::BELONGS_TO, 'SubjectType', 'subject_master_type_id'),
			'Rel_aca_term_period_id' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'subject_master_academic_terms_period_id'),
			'Rel_aca_term_name_id' => array(self::BELONGS_TO, 'AcademicTerm', 'subject_master_academic_terms_name_id'),
			'Rel_org_id' => array(self::BELONGS_TO, 'Organization', 'subject_master_organization_id'),
			'Rel_branch_id' => array(self::BELONGS_TO, 'Branch', 'subject_master_branch_id'),
			
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'subject_master_id' => 'Subject Master id',
			'subject_master_name' => 'Subject :',
			'subject_master_code' => 'Code :',
			'subject_master_alias' => 'Alias :',
			'subject_master_type_id' => 'Type :',
			'subject_master_organization_id' => 'Organization :',
			'subject_master_branch_id' => 'Branch :',
			'subject_master_academic_terms_period_id' => 'Term Period :',
			'subject_master_academic_terms_name_id' => 'Semester Name :',
			'subject_master_active' => 'Status :',
			'subject_master_updated_date' => 'Updated Date :',
			'subject_master_updated_user' => 'Updated User :',
			'subject_master_color_code' => 'Subject Color',
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

		

		$criteria->condition = 'subject_master_organization_id = :subject_master_org_id';
	        $criteria->params = array(':subject_master_org_id' => Yii::app()->user->getState('org_id'));

		$criteria->with = array('Rel_sub_type','Rel_branch_id','Rel_aca_term_period_id','Rel_aca_term_name_id');
		$criteria->compare('Rel_sub_type.subject_type_name',$this->subject_type_name,true);
		$criteria->compare('Rel_branch_id.branch_name',$this->branch_name,true);  // Note: Compare related table field with relation....
		$criteria->compare('Rel_aca_term_period_id.academic_terms_period_name',$this->academic_terms_period_name,true);
		$criteria->compare('Rel_aca_term_name_id.academic_term_name',$this->academic_term_name,true);
		

		$criteria->compare('subject_master_id',$this->subject_master_id);
		$criteria->compare('subject_master_name',$this->subject_master_name,true);
		$criteria->compare('subject_master_code',$this->subject_master_code,true);
		$criteria->compare('subject_master_alias',$this->subject_master_alias,true);
		$criteria->compare('subject_master_type_id',$this->subject_master_type_id);
		$criteria->compare('subject_master_organization_id',$this->subject_master_organization_id);
		$criteria->compare('subject_master_branch_id',$this->subject_master_branch_id);
		$criteria->compare('subject_master_academic_terms_period_id',$this->subject_master_academic_terms_period_id);
		$criteria->compare('subject_master_academic_terms_name_id',$this->subject_master_academic_terms_name_id);
		$criteria->compare('subject_master_active',$this->subject_master_active);
		$criteria->compare('subject_master_updated_date',$this->subject_master_updated_date,true);
		$criteria->compare('subject_master_updated_user',$this->subject_master_updated_user);
		
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
        $models=self::model()->findAll(array('condition'=>'subject_master_organization_id='.Yii::app()->user->getState('org_id')));
        foreach($models as $model)
            self::$_items[$model->subject_master_id]=$model->subject_master_name;
    }
}
