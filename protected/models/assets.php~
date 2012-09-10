<?php

/**
 * This is the model class for table "inward".
 *
 * The followings are the available columns in table 'inward':
 * @property integer $id
 * @property string $invoice_description
 * @property string $company_name
 * @property string $invoice_no_dc
 * @property string $invoice_date
 * @property string $received_date
 * @property string $sender_name
 * @property integer $department
 * @property string $photo
 * @property string $document
 * @property string $document_desc
 * @property integer $org_name_id
 * @property integer $no_of_packets
 * @property string $receiver_name
 *
 * The followings are the available model relations:
 * @property Department $department0
 * @property Organization $orgName
 */
class assets extends CActiveRecord
{
	public $department_name;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return assets the static model class
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
		return 'inward';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('invoice_description, company_name, invoice_no_dc, invoice_date, received_date, sender_name, department, document_desc, org_name_id, no_of_packets, receiver_name', 'required','message'=>''),
			array('department, org_name_id, no_of_packets', 'numerical', 'integerOnly'=>true,'message'=>''),
			array('invoice_description, document_desc', 'length', 'max'=>100),
			array('company_name', 'length', 'max'=>30),
			//array('photo', 'file', 'types'=>'jpg, jpeg, gif, png'),
			array('photo', 'file', 'types'=>'jpeg, jpg, gif, png','allowEmpty'=>true),
			array('invoice_no_dc,no_of_packets', 'length', 'max'=>10),
			array('sender_name, receiver_name', 'length', 'max'=>20),
			//array('photo', 'length', 'max'=>250),
			array('document','file', 'types'=>'txt,pdf,doc','allowEmpty'=>true),
			array('document', 'length', 'max'=>300),
			array('sender_name,receiver_name','CRegularExpressionValidator', 'pattern'=>'/^([A-Za-z  ]+)$/','message'=>''),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, invoice_description, company_name, invoice_no_dc, invoice_date, received_date, sender_name, department, document, document_desc, org_name_id, no_of_packets, receiver_name, department_name', 'safe', 'on'=>'search'),
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

			'inwardDetails' => array(self::HAS_MANY, 'InwardDetail', 'invoice_id'),
			'rel_department' => array(self::BELONGS_TO, 'Department', 'department'),
			'rel_organization' => array(self::BELONGS_TO, 'Organization', 'org_name_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'invoice_description' => 'Invoice Description',
			'company_name' => 'Company Name',
			'invoice_no_dc' => 'Invoice No Dc',
			'invoice_date' => 'Invoice Date',
			'received_date' => 'Received Date',
			'sender_name' => 'Sender Name',
			'department' => 'Department',
			'photo' => 'Photo',
			'document' => 'Document',
			'document_desc' => 'Document Desc',
			'org_name_id' => 'Org Name',
			'no_of_packets' => 'No Of Packets',
			'receiver_name' => 'Receiver Name',
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
		$criteria->compare('id',$this->id);
		$criteria->compare('rel_department.department_name',$this->department_name,true);  // Note: Compare related table field with relation....

		$criteria->compare('invoice_description',$this->invoice_description,true);
		$criteria->compare('company_name',$this->company_name,true);
		$criteria->compare('invoice_no_dc',$this->invoice_no_dc,true);
		$criteria->compare('invoice_date',$this->invoice_date,true);
		$criteria->compare('received_date',$this->received_date,true);
		$criteria->compare('sender_name',$this->sender_name,true);
		$criteria->compare('department',$this->department);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('document',$this->document,true);
		$criteria->compare('document_desc',$this->document_desc,true);
		$criteria->compare('org_name_id',$this->org_name_id);
		$criteria->compare('no_of_packets',$this->no_of_packets);
		$criteria->compare('receiver_name',$this->receiver_name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
