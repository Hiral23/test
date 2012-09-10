<?php

/**
 * This is the model class for table "inward_details".
 *
 * The followings are the available columns in table 'inward_details':
 * @property integer $id
 * @property integer $inward_id
 * @property string $name
 * @property string $description
 * @property integer $quantity
 * @property integer $item_category_id
 * @property integer $rate
 * @property integer $amount
 *
 * The followings are the available model relations:
 * @property ItemCategory $itemCategory
 * @property OutwardDetails[] $outwardDetails
 */
class assetsDetails extends CActiveRecord
{
	public $cat_name;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return assetsDetails the static model class
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
		return 'inward_details';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('inward_id, name, description, quantity, item_category_id, rate, amount', 'required','message'=>''),
			array('inward_id, quantity, item_category_id, rate, amount', 'numerical', 'integerOnly'=>true,'message'=>''),
			array('name', 'length', 'max'=>20),
			array('description', 'length', 'max'=>100),
			array('rate, amount,quantity', 'length', 'max'=>10),
			array('name','CRegularExpressionValidator', 'pattern'=>'/^([A-Za-z  ]+)$/','message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, inward_id, name, description, quantity, item_category_id, rate, amount, cat_name', 'safe', 'on'=>'search'),
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
			'itemCategory' => array(self::BELONGS_TO, 'ItemCategory', 'item_category_id'),
			'outwardDetails' => array(self::HAS_MANY, 'OutwardDetails', 'name'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
//			'inward_id' => 'Inward',
			'name' => 'Name :',
			'description' => 'Description :',
			'quantity' => 'Quantity :',
			'item_category_id' => 'Item Category :',
			'rate' => 'Rate :',
			'amount' => 'Amount :',
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

		$criteria->with = array('itemCategory');  /// Note: Define relation with related table....
		$criteria->compare('itemCategory.cat_name',$this->cat_name,true);  // Note: Compare related table field with relation....

		$criteria->compare('inward_id',$this->inward_id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('quantity',$this->quantity);
		$criteria->compare('item_category_id',$this->item_category_id);
		$criteria->compare('rate',$this->rate);
		$criteria->compare('amount',$this->amount);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
