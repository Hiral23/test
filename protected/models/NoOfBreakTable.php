<?php

/**
 * This is the model class for table "no_of_break_table".
 *
 * The followings are the available columns in table 'no_of_break_table':
 * @property integer $id
 * @property integer $timetable_id
 * @property integer $day
 * @property integer $after_lec_break
 * @property integer $branch_id
 * @property integer $div_id
 * @property integer $acdm_period_id
 * @property integer $acdm_name_id
 * @property integer $no_of_break_table_organization_id
 */
class NoOfBreakTable extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return NoOfBreakTable the static model class
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
		return 'no_of_break_table';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('timetable_id, after_lec_break, duration, created_by, creation_date', 'required'),
			array('timetable_id, day, after_lec_break,  div_id, acdm_period_id, acdm_name_id, no_of_break_table_organization_id', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, timetable_id, day, after_lec_break, branch_id, div_id, acdm_period_id, acdm_name_id, no_of_break_table_organization_id', 'safe', 'on'=>'search'),
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
			'timetable_id' => 'Timetable',
			'day' => 'Day',
			'after_lec_break' => 'After Lec Break',
			'branch_id' => 'Branch',
			'div_id' => 'Div',
			'acdm_period_id' => 'Acdm Period',
			'acdm_name_id' => 'Acdm Name',
			'no_of_break_table_organization_id' => 'No Of Break Organization',
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
		$criteria->compare('timetable_id',$this->timetable_id);
		$criteria->compare('day',$this->day);
		$criteria->compare('after_lec_break',$this->after_lec_break);
		$criteria->compare('branch_id',$this->branch_id);
		$criteria->compare('div_id',$this->div_id);
		$criteria->compare('acdm_period_id',$this->acdm_period_id);
		$criteria->compare('acdm_name_id',$this->acdm_name_id);
		$criteria->compare('no_of_break_table_organization_id',$this->no_of_break_table_organization_id);


		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	public function beforeSave()
	{
		
		$lec=TimeTable::model()->findAllByAttributes(array(),
								$condition  = 'timetable_id = :table_id',
								$params     = array(
									':table_id' => $_REQUEST['id'], 
								));
		$practtest=TimeTableDetail::model()->findAllByAttributes(
								array(),
								$condition  = 'timetable_id = :table_id  AND lec = :lec',
								$params     = array(
									':table_id' => $_REQUEST['id'],
									':lec'=>$this->after_lec_break,
									));
		$pract=0;
		foreach($practtest as $p)
		{
			if($p['subject_type']==2)
			{
				$pract=1;
				break;
			}
		}
		
		
		
		

		foreach($lec as $l){
			$no=$l['No_of_Lec'];
			}		
		
			if(NoOfBreakTable::model()->findByAttributes(array('timetable_id'=>$_REQUEST['id'],'after_lec_break'=>$this->after_lec_break)))
			{
				$this->addError('after_lec_break',"Already Created this break.");
				return false;
			}
			else
			{
				if($pract==1)
				{
					$this->addError('after_lec_break',"You can not create break after this lect.");
					return false;	
				}
				else
				{
					if($this->after_lec_break == $no)
					{
						$this->addError('after_lec_break',"You can not assign after this lect.");
						return false;
					}
					else
						return true;
				}
			}
		
	}
}
