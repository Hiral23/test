<?php

/**
 * This is the model class for table "room_details_master".
 *
 * The followings are the available columns in table 'room_details_master':
 * @property integer $id
 * @property string $room_name
 * @property string $location
 * @property integer $seat_capacity
 * @property integer $room_category
 * @property integer $no_of_banches
 * @property string $remarks
* @property integer $room_details_organization_id
 */
class RoomDetailsMaster extends CActiveRecord
{
	public $category_name;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return RoomDetailsMaster the static model class
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
		return 'room_details_master';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('room_name, location, seat_capacity, room_category, no_of_banches', 'required', 'message'=>''),
			array('seat_capacity, room_details_organization_id,room_category, no_of_banches', 'numerical', 'integerOnly'=>true, 'message'=>''),
			array('room_name, location, remarks', 'length', 'max'=>100, 'message'=>''),
			array(' no_of_banches,seat_capacity', 'length', 'max'=>30, 'message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, room_name, location, seat_capacity, room_details_organization_id,room_category, no_of_banches, remarks, category_name', 'safe', 'on'=>'search'),
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
			'category' => array(self::BELONGS_TO, 'RoomCategory', 'room_category'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'room_name' => 'Room Name :',
			'location' => 'Location :',
			'seat_capacity' => 'Seat Capacity :',
			'room_category' => 'Room Category :',
			'no_of_banches' => 'No Of Banches :',
			'remarks' => 'Remarks :',
			'room_details_organization_id'=>'Organization:',
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

		$criteria->condition = 'room_details_organization_id = :room_details_organization_id';
	        $criteria->params = array(':room_details_organization_id' => Yii::app()->user->getState('org_id'));


		$criteria->compare('id',$this->id);

		$criteria->with = array('category');  /// Note: Define relation with related table....
		$criteria->compare('category.category_name',$this->category_name,true);  // Note: Compare related table field with relation....
		$criteria->compare('room_name',$this->room_name,true);
		$criteria->compare('location',$this->location,true);
		$criteria->compare('seat_capacity',$this->seat_capacity);
		$criteria->compare('room_category',$this->room_category);
		$criteria->compare('no_of_banches',$this->no_of_banches);
		$criteria->compare('remarks',$this->remarks,true);
		$criteria->compare('room_details_organization_id',$this->room_details_organization_id);
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
        $models=self::model()->findAll(array('condition'=>'room_details_organization_id='.Yii::app()->user->getState('org_id')));
        foreach($models as $model)
            self::$_items[$model->id]=$model->room_name;
    }
}
