	<?php

/**
 * This is the model class for table "room_category_master".
 *
 * The followings are the available columns in table 'room_category_master':
 * @property integer $id
 * @property string $category_name
 * @property string $created_by
 * @property string $creation_time
 * @property integer $room_category_organization_id
 */
class RoomCategory extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return RoomCategory the static model class
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
		return 'room_category_master';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('category_name, created_by, creation_time', 'required','message'=>''),
			array('category_name, created_by', 'length', 'max'=>100,'message'=>''),
			array('category_name','CRegularExpressionValidator','pattern'=>'/^([A-Za-z  ]+)$/','message'=>''),
			array('room_category_organization_id','numerical','integerOnly'=>true, 'message'=>''),
			array('category_name', 'checkroomcategoryname'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, category_name, created_by,room_category_organization_id, creation_time', 'safe', 'on'=>'search'),
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
			'id' => 'Category id',
			'category_name' => 'Room Category :',
			'created_by' => 'Created By :',
			'creation_time' => 'Creation Date :',
			'room_category_organization_id'=>'Room Category Organization',
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

		$criteria->condition = 'room_category_organization_id = :org_name_id';
	        $criteria->params = array(':org_name_id' => Yii::app()->user->getState('org_id'));


		$criteria->compare('id',$this->id);
		$criteria->compare('category_name',$this->category_name,true);
		$criteria->compare('created_by',$this->created_by,true);
		$criteria->compare('creation_time',$this->creation_time,true);
		$criteria->compare('room_category_organization_id',$this->room_category_organization_id,true);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/* before save for uniqueness of room category name */

	public function checkroomcategoryname()
		{
			if($this->isNewRecord)
			{
				$rname='"'.strtolower($this->category_name).'"';
				$room_name=Yii::app()->db->createCommand()
					    ->select('category_name')
					    ->from('room_category_master')
					    ->where('room_category_organization_id='.Yii::app()->user->getState('org_id').' and LOWER(category_name)='.$rname)
				    	    ->queryAll();
				
				if($room_name)
				{
					$this->addError('category_name',"RoomName already exist.");	
					 return false;	
				}
				else
				{
					return true;
				}
			}
			else
			{
				$rid=$_REQUEST['id'];
				$rname='"'.strtolower($this->category_name).'"';
				$orgid=Yii::app()->user->getState('org_id');
				$room_name=Yii::app()->db->createCommand()
					    ->select('category_name')
					    ->from('room_category_master')
					    ->where('id <>'.$rid.' and room_category_organization_id ='.$orgid.' and LOWER(category_name)='.$rname)
				    	    ->queryAll();
				
				if($room_name)
				  {
				 	$this->addError('category_name',"RoomName already exist.");	
					 return false;	
				  }
				else
			          {
					return true;
				  }
			}	

		}


}
