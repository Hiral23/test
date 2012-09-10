<?php

/**
 * This is the model class for table "academic_term".
 *
 * The followings are the available columns in table 'academic_term':
 * @property integer $academic_term_id
 * @property string $academic_term_name
 * @property integer $academic_term_period_id
* @property date $academic_term_start_date
* @property date $academic_term_end_date
* @property integer $current_sem	
 * @property integer academic_term_organization_id
 * The followings are the available model relations:
 * @property AcademicTermPeriod $academicTermPeriod
 */
class AcademicTerm extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AcademicTerm the static model class
	 */
	public $academic_term_period;

	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'academic_term';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('academic_term_name,academic_term_period_id,academic_term_start_date, academic_term_end_date', 'required','message'=>''),
			array('academic_term_period_id,academic_term_organization_id', 'numerical', 'integerOnly'=>true),
			array('academic_term_name', 'length', 'max'=>30),
			array('academic_term_name','CRegularExpressionValidator','pattern'=>'/^([0-9a-zA-Z-\/ ]+)$/','message'=>''),

			array('academic_term_name','checkacademicterm'),

			//array('academic_term_name', 'unique','message'=>'Already Exist.'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('academic_term_id, academic_term_name, academic_term_period_id,academic_term_period,academic_term_organization_id,academic_term_start_date,academic_term_end_date, current_sem', 'safe', 'on'=>'search'),
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
			'academicTermPeriod' => array(self::BELONGS_TO, 'AcademicTermPeriod', 'academic_term_period_id'),
		);
	}
/*
	public function checkterm($attribute,$params)
	{
	    
		$result=AcademicTerm::model()->findByAttributes(array('academic_term_name'=>$this->academic_term_name,'academic_term_period_id'=>$this->academic_term_period_id));

		if(count($result))
		{
			$this->addError('academic_term_name','Already Exits');
		}
	
	}
*/
	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'academic_term_id' => 'Academic Term',
			'academic_term_name' => 'Semester Name :',
			'academic_term_period_id' => 'Term Period :',
			'academic_term_start_date'=>'Start Date:',
			'academic_term_end_date'=>'End Date:',
			'current_sem' => 'Current Semester :',
			'academic_term_organization_id' => 'Organization',
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
		$criteria->condition = 'academic_term_organization_id = :academic_term_org_id';
	        $criteria->params = array(':academic_term_org_id' => Yii::app()->user->getState('org_id'));
		$criteria->with = array('academicTermPeriod'); 
		$criteria->compare('academicTermPeriod.academic_term_period',$this->academic_term_period,true);  
		$criteria->compare('academic_term_id',$this->academic_term_id);
		$criteria->compare('academic_term_name',$this->academic_term_name,true);
		$criteria->compare('current_sem',$this->current_sem,true);
		$criteria->compare('academic_term_start_date',$this->academic_term_start_date,true);
		$criteria->compare('academic_term_end_date',$this->academic_term_end_date,true);		
		$criteria->compare('academic_term_period_id',$this->academic_term_period_id);
		$criteria->compare('academic_term_organization_id',$this->academic_term_organization_id);		

		
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	public function beforeSave()
	{
		if($this->academic_term_start_date<$this->academic_term_end_date)
		    return true;
		else
		{
		    $this->addError("academic_term_start_date","Start date must be less than End date");       
		    return false;
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
			$models=self::model()->$models=self::model()->findAll(array('condition'=>'academic_term_organization_id='.Yii::app()->user->getState('org_id')));
			foreach($models as $model)
		   // self::$_items[$model->academic_terms_period_id]=$model->academic_terms_period_name."-".$model->academic_term_period;
			self::$_items[$model->academic_term_id]=$model->academic_term_name;
	    	}

	/* before save for uniqueness of academic_term_name */

	public function checkacademicterm()
		{
			if($this->isNewRecord)
			{
				$acdmperiodid=$this->academic_term_period_id;
				$acdmperiodname='"'.strtolower($this->academic_term_name).'"';
				$acdm_term_name=Yii::app()->db->createCommand()
					    ->select('academic_term_name')
					    ->from('academic_term')
					    ->where('academic_term_organization_id='.Yii::app()->user->getState('org_id').' and academic_term_period_id="'.$acdmperiodid.'"'.' and academic_term_name='.$acdmperiodname)
				    	    ->queryAll();
				
				if($acdm_term_name)
				{
					$this->addError('academic_term_name',"AcademicTermName already exist.");	
					 return false;	
				}
				else
				{
					return true;
				}
			}
			else
			{
				$acdmtermid=$_REQUEST['id'];
				$acdmperiodid=$this->academic_term_period_id;
				$acdmperiodname='"'.strtolower($this->academic_term_name).'"';
				$orgid=Yii::app()->user->getState('org_id');
				$acdm_term_name=Yii::app()->db->createCommand()
					    ->select('academic_term_name')
					    ->from('academic_term')
					    ->where('academic_term_id <>'.$acdmtermid.' and academic_term_organization_id='.$orgid.' and academic_term_period_id="'.$acdmperiodid.'"'.' and academic_term_name='.$acdmperiodname)
				    	    ->queryAll();
				
				if($acdm_term_name)
				  {
				 	$this->addError('academic_term_name',"AcademicTermName already exist.");	
					 return false;	
				  }
				else
			          {
					return true;
				  }
			}	
		}


}
