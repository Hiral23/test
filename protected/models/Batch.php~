<?php

/**
 * This is the model class for table "batch".
 *
 * The followings are the available columns in table 'batch':
 * @property integer $batch_id
 * @property string $batch_name
 * @property integer $batch_organization_id
 * @property integer $batch_created_by
 * @property string $batch_creation_date
 */
class Batch extends CActiveRecord
{
	public $branch_name;
	public $division_name;
	public $subject_master_name,$academic_term_name,$academic_term_period;
	/**
	 * Returns the static model of the specified AR class.
	 * @return Batch the static model class
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
		return 'batch';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('batch_name, batch_organization_id, batch_created_by, batch_creation_date, branch_id, div_id, subject_id, academic_period_id, academic_name_id', 'required','message'=>''),
			array('batch_organization_id, batch_created_by', 'numerical', 'integerOnly'=>true),
			array('batch_name, batch_code', 'length', 'max'=>60),
			//array('batch_name', 'unique','message'=>'Already Exist.'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('batch_id, batch_code, batch_name, batch_organization_id, batch_created_by, batch_creation_date, div_id, subject_id, academic_period_id, academic_name_id, subject_master_name, division_name, branch_name, academic_term_name, academic_term_period', 'safe', 'on'=>'search'),
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
		
			'rel_branch' => array(self::BELONGS_TO, 'Branch', 'branch_id'),
			'rel_division'=>array(self::BELONGS_TO, 'Division','div_id'),
			'rel_subject' => array(self::BELONGS_TO, 'SubjectMaster', 'subject_id'),
			'rel_batch_academic_id' => array(self::BELONGS_TO, 'AcademicTerm', 'academic_name_id'),
			'rel_batch_academic_period_id' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'academic_period_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'batch_id' => 'Batch',
			'batch_name' => 'Name :',
			'batch_organization_id' => 'Batch Organization',
			'batch_created_by' => 'Created By :',
			'batch_creation_date' => 'Creation Date :',

			'batch_code' => 'Batch Code',
			'branch_id' => 'Branch Name',
			'div_id' => 'Division Name',
			'subject_id' => 'Subject Name',
			'academic_period_id' => 'Academic Period',
			'academic_name_id' => 'Semester Name',

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

		$criteria->condition = 'batch_organization_id = :batch_org_id';
	        $criteria->params = array(':batch_org_id' => Yii::app()->user->getState('org_id'));

		$criteria->with = array('rel_batch_academic_period_id','rel_batch_academic_id','rel_branch','rel_division','rel_subject');  /// Note: Define relation with related table....

		$criteria->compare('rel_branch.branch_name',$this->branch_name,true);  // Note: Compare related table field with relation....
		$criteria->compare('rel_division.division_name',$this->division_name,true);  // Note: Compare related table field with relation....
		$criteria->compare('rel_subject.subject_master_name',$this->subject_master_name,true);  // Note: Compare related table field with relation....

		$criteria->compare('rel_batch_academic_period_id.academic_term_period',$this->academic_term_period,true);
		$criteria->compare('rel_batch_academic_id.academic_term_name',$this->academic_term_name,true);


		$criteria->compare('batch_id',$this->batch_id);
		$criteria->compare('batch_name',$this->batch_name,true);
		$criteria->compare('batch_organization_id',$this->batch_organization_id);
		$criteria->compare('batch_created_by',$this->batch_created_by);
		$criteria->compare('batch_creation_date',$this->batch_creation_date,true);

		$criteria->compare('batch_code',$this->batch_code);
		$criteria->compare('branch_id',$this->branch_id);
		$criteria->compare('div_id',$this->div_id);
		$criteria->compare('subject_id',$this->subject_id);
		$criteria->compare('academic_period_id',$this->academic_period_id);
		$criteria->compare('academic_name_id',$this->academic_name_id);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}

	//for checking already exist batch

		public  function beforeSave()
		{
			if($this->isNewRecord)
			{
				$batch_name=strtolower($this->batch_name);
				$batch=Yii::app()->db->createCommand()
					    ->select('batch_name')
					    ->from('batch')
					    ->where('batch_organization_id='.Yii::app()->user->getState('org_id').' and LOWER(batch_name)="'.$batch_name.'" and branch_id='.$this->branch_id.' and div_id='.$this->div_id.' and subject_id='.$this->subject_id.' and  academic_period_id='.$this->academic_period_id.' and academic_name_id='.$this->academic_name_id)
				    	    ->queryAll();
				
				if($batch)
				{
					$this->addError('batch_name',"Batch Name already exist with this criteria.");	
					 return false;	
				}
				else
				{
					return true;
				}
			}
			else
			{
				$batch_name=strtolower($this->batch_name);
				$batch=Yii::app()->db->createCommand()
					    ->select('batch_name')
					    ->from('batch')
					    ->where('batch_organization_id='.Yii::app()->user->getState('org_id').' and LOWER(batch_name)="'.$batch_name.'" and branch_id='.$this->branch_id.' and div_id='.$this->div_id.' and subject_id='.$this->subject_id.' and  academic_period_id='.$this->academic_period_id.' and academic_name_id='.$this->academic_name_id.' and batch_id<>'.$_REQUEST['id'])
				    	    ->queryAll();
				
				if($batch)
				{
					$this->addError('batch_name',"Batch Name already exist with this criteria.");	
					 return false;	
				}
				else
				{
					return true;
				}
				
			}
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
        	$models=self::model()->findAll(array('condition'=>'batch_organization_id='.Yii::app()->user->getState('org_id')));
        	foreach($models as $model)
            self::$_items[$model->batch_id]=$model->batch_name;
    	}
}
