<?php

/**
 * This is the model class for table "user".
 *
 * The followings are the available columns in table 'user':
 * @property integer $user_id
 * @property string $user_organization_email_id
 * @property string $user_password
 * @property integer $user_created_by
 * @property string $user_creation_date
 */
class User extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return User the static model class
	 */

	public $current_pass,$new_pass,$retype_pass;

	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('user_organization_email_id, user_password, user_created_by, user_creation_date', 'required','message'=>''),
			array('current_pass, new_pass, retype_pass', 'required','on'=>'change','message'=>''),
			array('user_created_by', 'numerical', 'integerOnly'=>true),
			array('user_organization_email_id', 'email','message'=>''),
			array('user_organization_email_id', 'unique','on'=>'create','message'=>'email id must be unique.'),
			array('retype_pass', 'compare','compareAttribute'=>'new_pass'),
			array('user_organization_email_id', 'length', 'max'=>60,'message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('current_pass','checkOldPassword','on'=>'change','message'=>''),
			array('user_id, user_organization_email_id, user_password, user_created_by, user_creation_date', 'safe', 'on'=>'search'),
			array('current_pass, new_pass, retype_pass', 'safe','message'=>''),
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

	public function checkOldPassword($attribute,$params)
	{
	    $record=User::model()->findByAttributes(array('user_password'=>md5($this->current_pass.$this->current_pass)));

	    if($record===null){
		$this->addError($attribute, 'Invalid password');
	    }
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'user_id' => 'User :',
			'user_organization_email_id' => 'Organization Email :',
			'user_password' => 'Password :',
			'user_created_by' => 'Created By :',
			'user_creation_date' => 'Creation Date :',
			'current_pass' => 'Current Password',
			'new_pass' => 'New Password',
			'retype_pass' => 'Retype Password',
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

		$criteria->condition = 'user_type = :usertype1';
	        $criteria->params = array(':usertype1' => 'admin');

		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('user_organization_email_id',$this->user_organization_email_id,true);
		$criteria->compare('user_password',$this->user_password,true);
		$criteria->compare('user_created_by',$this->user_created_by);
		$criteria->compare('user_creation_date',$this->user_creation_date,true);

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
		    self::$_items[$model->user_id]=$model->user_organization_email_id;
	    }


}
