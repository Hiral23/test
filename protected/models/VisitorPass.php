<?php

/**
 * This is the model class for table "visitor_pass".
 *
 * The followings are the available columns in table 'visitor_pass':
 * @property integer $pass_no
 * @property string $in_date_time
 * @property string $visitor_name
 * @property string $contact_person
 * @property string $purpose
 * @property string $department
 * @property string $address
 * @property integer $company_represented
 * @property string $vehicle_no
 * @property integer $no_of_persons
 * @property string $remark
 * @property string $photo
 * @property integer $age
 * @property string $gender
 * @property string $out_time
 * @property integer $batch_no
 * @property integer $item_carring
 * @property integer $visitor_pass_organization_id
 */
class VisitorPass extends CActiveRecord
{

	public $department_name;
	const TYPE_MALE='Male';
	const TYPE_FEMALE='Female';

	/**
	 * Returns the static model of the specified AR class.
	 * @return VisitorPass the static model class
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
		return 'visitor_pass';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('in_date_time, visitor_name, contact_person, purpose, department, address,no_of_persons,age, gender,out_time', 'required','message'=>''),
			array('no_of_persons, age,visitor_pass_organization_id, item_carring, batch_no, out_time', 'numerical', 'integerOnly'=>true,'message'=>''),
			array('visitor_name, department', 'length', 'max'=>25),
			array('contact_person', 'length', 'max'=>40),
			array('purpose', 'length', 'max'=>50),
			array('no_of_persons', 'length', 'max'=>3),
			array('address', 'length', 'max'=>200),
			array('company_represented', 'length', 'max'=>50),
			array('vehicle_no', 'length', 'max'=>15),
			array('remark', 'length', 'max'=>100),
			array('gender', 'length', 'max'=>6),
			array('age', 'length', 'max'=>2),
			array('item_carring', 'length', 'max'=>5),
			array('batch_no', 'length', 'max'=>9),
			array('visitor_name, contact_person','CRegularExpressionValidator', 'pattern'=>'/^([A-Za-z  ]+)$/','message'=>''),
			//array('batch_no'),
			array('photo', 'file', 'types'=>'jpg, jpeg, gif, png', 'allowEmpty'=>true),
			//array('item_carring', 'length', 'max'=>100),


			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('pass_no, in_date_time, visitor_name, contact_person, purpose, department, address, company_represented, vehicle_no, no_of_persons, remark, photo, age, gender, out_time, batch_no, item_carring, department_name,visitor_pass_organization_id', 'safe', 'on'=>'search'),
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
                       'Rel_vistor_dep' => array(self::BELONGS_TO, 'Department', 'department'),
               );
	}


	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'pass_no' => 'Pass No',
			'in_date_time' => 'In Date Time',
			'visitor_name' => 'Visitor Name',
			'contact_person' => 'Contact Person',
			'purpose' => 'Purpose',
			'department' => 'Department',
			'address' => 'Address',
			'company_represented' => 'Organization Represented',
			'vehicle_no' => 'Vehicle No',
			'no_of_persons' => 'No Of Persons',
			'remark' => 'Remark',
			'photo' => 'Photo',
			'age' => 'Age',
			'gender' => 'Gender',
			'out_time' => 'Expected Out Time',
			'batch_no' => 'Batch No',
			'item_carring' => 'Item Carring',
			'visitor_pass_organization_id'=>'Organization',
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

		$criteria->condition = 'visitor_pass_organization_id = :visitor_pass_organization_id';
	        $criteria->params = array(':visitor_pass_organization_id' => Yii::app()->user->getState('org_id'));		


		$criteria->condition = 'In_Out_Status=1';

		$criteria->with = array('Rel_vistor_dep');  /// Note: Define relation with related table....

		$criteria->compare('Rel_vistor_dep.department_name',$this->department_name,true);  // Note: Compare related table field with relation....

		$criteria->compare('pass_no',$this->pass_no);
		$criteria->compare('in_date_time',$this->in_date_time,true);
		$criteria->compare('visitor_name',$this->visitor_name,true);
		$criteria->compare('contact_person',$this->contact_person,true);
		$criteria->compare('purpose',$this->purpose,true);
		$criteria->compare('department',$this->department,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('company_represented',$this->company_represented);
		$criteria->compare('vehicle_no',$this->vehicle_no,true);
		$criteria->compare('no_of_persons',$this->no_of_persons);
		$criteria->compare('remark',$this->remark,true);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('age',$this->age);
		$criteria->compare('gender',$this->gender,true);
		$criteria->compare('out_time',$this->out_time,true);
		$criteria->compare('batch_no',$this->batch_no);
		$criteria->compare('item_carring',$this->item_carring);
		$criteria->compare('visitor_pass_organization_id',$this->visitor_pass_organization_id);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}

	public function total_visitor()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('pass_no',$this->pass_no);
		$criteria->compare('in_date_time',$this->in_date_time,true);
		$criteria->compare('visitor_name',$this->visitor_name,true);
		$criteria->compare('contact_person',$this->contact_person,true);
		$criteria->compare('purpose',$this->purpose,true);
		$criteria->compare('department',$this->department,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('company_represented',$this->company_represented);
		$criteria->compare('vehicle_no',$this->vehicle_no,true);
		$criteria->compare('no_of_persons',$this->no_of_persons);
		$criteria->compare('remark',$this->remark,true);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('age',$this->age);
		$criteria->compare('gender',$this->gender,true);
		$criteria->compare('out_time',$this->out_time,true);
		$criteria->compare('batch_no',$this->batch_no);
		$criteria->compare('item_carring',$this->item_carring);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}


public function getGenderOptions()
	{
		return array(
		self::TYPE_MALE=>'Male',
		self::TYPE_FEMALE=>'Female',
		);
	}
}
