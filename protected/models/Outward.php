<?php

/**
 * This is the model class for table "outward".
 *
 * The followings are the available columns in table 'outward':
 * @property integer $id
 * @property string $invoice_description
 * @property string $company_name
 * @property string $invoice_no_dc
 * @property string $invoice_date
 * @property string $sending_date
 * @property string $receiver_name
 * @property integer $department
 * @property string $photo
 * @property string $document
 * @property string $document_desc
 * @property integer $org_name_id
 * @property integer $no_of_packets
 * @property string $sender_name
 *
 * The followings are the available model relations:
 * @property Organization $orgName
 * @property Department $department0
 * @property OutwardDetails[] $outwardDetails
 */
class Outward extends CActiveRecord
{
	public $department_name;
	/**
	 * Returns the static model of the specified AR class.
	 * @return Outward the static model class
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
		return 'outward';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('invoice_description, company_name, invoice_no_dc, invoice_date, sending_date, receiver_name, department, org_name_id, no_of_packets, sender_name', 'required','message'=>''),
			array('department, org_name_id, no_of_packets', 'numerical', 'integerOnly'=>true,'message'=>''),
			array('invoice_description, document_desc', 'length', 'max'=>100),
			array('company_name', 'length', 'max'=>30),
			array('invoice_no_dc,no_of_packets', 'length', 'max'=>10),
			array('receiver_name, sender_name', 'length', 'max'=>20),
			array('photo', 'file' , 'allowEmpty' => true, 'types'=>'jpeg, jpg, gif, png'),
			array('document','file', 'allowEmpty' => true,'types'=>'txt,pdf,doc'),
			array('sender_name,receiver_name','CRegularExpressionValidator', 'pattern'=>'/^([A-Za-z  ]+)$/','message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, invoice_description, company_name, invoice_no_dc, invoice_date, sending_date, receiver_name, department, photo, document, document_desc, org_name_id, no_of_packets, sender_name, department_name', 'safe', 'on'=>'search'),
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
			'orgName' => array(self::BELONGS_TO, 'Organization', 'org_name_id'),
			'department0' => array(self::BELONGS_TO, 'Department', 'department'),
			'outwardDetails' => array(self::HAS_MANY, 'OutwardDetails', 'outward_id'),
			'rel_department' => array(self::BELONGS_TO, 'Department', 'department'),
			//'itemcat' => array(self::BELONGS_TO, 'ItemCategory', 'id'),
			//'inname' => array(self::BELONGS_TO, 'InwardDetails', 'inward_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'invoice_description' => 'Description',
			'company_name' => 'Company Name',
			'invoice_no_dc' => 'Refernce No',
			'invoice_date' => 'Date',
			'sending_date' => 'Sending Date',
			'receiver_name' => 'Receiver Name',
			'department' => 'Department',
			'photo' => 'Photo',
			'document' => 'Document',
			'document_desc' => 'Document Desc',
			'org_name_id' => 'Org Name',
			'no_of_packets' => 'No Of Packets',
			'sender_name' => 'Sender Name',
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


		$criteria->condition = 'org_name_id = :org_name_id';
	        $criteria->params = array(':org_name_id' => Yii::app()->user->getState('org_id'));		

		$criteria->with = array('rel_department');  /// Note: Define relation with related table....

		$criteria->compare('rel_department.department_name',$this->department_name,true);  // Note: Compare related table field with relation....

		$criteria->compare('id',$this->id);
		$criteria->compare('invoice_description',$this->invoice_description,true);
		$criteria->compare('company_name',$this->company_name,true);
		$criteria->compare('invoice_no_dc',$this->invoice_no_dc,true);
		$criteria->compare('invoice_date',$this->invoice_date,true);
		$criteria->compare('sending_date',$this->sending_date,true);
		$criteria->compare('receiver_name',$this->receiver_name,true);
		$criteria->compare('department',$this->department);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('document',$this->document,true);
		$criteria->compare('document_desc',$this->document_desc,true);
		$criteria->compare('org_name_id',$this->org_name_id);
		$criteria->compare('no_of_packets',$this->no_of_packets);
		$criteria->compare('sender_name',$this->sender_name,true);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}
}
