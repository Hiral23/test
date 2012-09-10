<?php

/**
 * This is the model class for table "organization".
 *
 * The followings are the available columns in table 'organization':
 * @property integer $organization_id
 * @property string $organization_name
 * @property integer $organization_created_by
 * @property string $organization_creation_date

 * @property string address_line1
 * @property string address_line2 
 * @property string city
 * @property string state
* @property string  country
* @property string pin
* @property string phone
* @property string website
* @property string email
* @property string taxno
* @property string logo

 */
class Organization extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return Organization the static model class
	 */

	public $city_name,$state_name,$name;

	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'organization';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('organization_name, organization_created_by, organization_creation_date,city,state,country, address_line1,pin, phone, website, email','required','message'=>''),
			array('organization_created_by,pin,city,state,country,phone,taxno', 'numerical', 'integerOnly'=>true , 'message'=>''),
			array('organization_name, organization_name,address_line1,address_line2', 'length', 'max'=>50, 'message'=>''),
			
			
			
			array('email', 'email','message'=>''),
			array('website','url', 'message'=>''),
			
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('organization_id, organization_name, organization_created_by, organization_creation_date, address_line1, address_line2, pin, phone, Website, email,taxno, city_name, state_name, name','safe', 'on'=>'search'),
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
                       'Rel_org_city' => array(self::BELONGS_TO, 'City', 'city'),
                       'Rel_org_state' => array(self::BELONGS_TO, 'State', 'state'),
                       'Rel_org_country' => array(self::BELONGS_TO, 'Country', 'country'),

		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'organization_id' => 'ID :',
			'organization_name' => 'Organization Name :',
			'organization_created_by' => 'Created By :',
			'organization_creation_date' => 'Creation Date :',
			'address_line1'=>'Address Line1:',
			'address_line2'=>'Address Line2:',
			'pin'=>'Pin:',
			'phone'=>'Phone:',
			'website'=>'website:',
			'email'=>'Email:',
			'taxno'=>'Taxno:',
			'city'=>'City:',
			'state'=>'State:',
			'country'=>'Country:',
			
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

		$criteria->with = array('Rel_org_city','Rel_org_state','Rel_org_country');  /// Note: Define relation with related table....

		$criteria->compare('Rel_org_city.city_name',$this->city_name,true);  // Note: Compare related table field with relation....
		$criteria->compare('Rel_org_state.state_name',$this->state_name,true);  // Note: Compare related table field with relation....
		$criteria->compare('Rel_org_country.name',$this->name,true);  // Note: Compare related table field with relation....

		$criteria->compare('organization_id',$this->organization_id);
		$criteria->compare('organization_name',$this->organization_name,true);
		$criteria->compare('organization_created_by',$this->organization_created_by);
		$criteria->compare('organization_creation_date',$this->organization_creation_date,true);
		$criteria->compare('address_line1',$this->address_line1,true);
		$criteria->compare('address_line2',$this->address_line2);
		$criteria->compare('pin',$this->pin);
		$criteria->compare('phone',$this->phone);	
		$criteria->compare('website',$this->website,true);
		$criteria->compare('email',$this->email);
		$criteria->compare('taxno',$this->taxno);
		$criteria->compare('city',$this->city);
		$criteria->compare('state',$this->state);		
		$criteria->compare('country',$this->country);
		return new CActiveDataProvider(get_class($this), array(
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
            self::$_items[$model->organization_id]=$model->organization_name;
    }
}
