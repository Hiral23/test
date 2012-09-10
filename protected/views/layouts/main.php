<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/sal.css" media="print, projection" />

<script>
       $(document).ready(function() {
                 $('#fancybox-close').click(function() {
                location.reload();
               });
       });
</script>
	
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>

</head>

<body>

<div id="page">

	<div id="header">

		<?php 
			if(isset($_REQUEST['organization_name']))
			{
				$org_id = $_REQUEST['organization_name']; 
				Yii::app()->user->setState('org_id',$_REQUEST['organization_name']);
			}
		?>
		
		<div id="logo"><div id="site-logo">

			<?php
			$test = Yii::app()->user->getState('org_id');
			if(isset($test))	
			{
			 echo CHtml::link(CHtml::image(Yii::app()->request->baseUrl."/organisation_logo/" .Organization::model()->findByPk(Yii::app()->user->getState('org_id'))->logo, "No Image"), array('/dashboard')); 
			}
			?>

		</div>

		<div id="site-name"><?php 
			echo CHtml::encode(Yii::app()->name).'<br>'; ?>
			<?php //echo $_REQUEST['organization_name']; ?>
			<div id="company-name">

		<?php	
			$new_org_id = Yii::app()->user->getState('org_id');
			if(isset($new_org_id))
			{

				$company = Organization::model()->findByPk($new_org_id);
				echo "Welcome to ".$company->organization_name;
			}
		
		?>
		</div></div></div>
	</div><!-- header -->
	<?php 
		if(isset($_REQUEST['organization_name']))
		{
			$role_id = assignCompanyUserTable::model()->find('assign_org_id=:org_id AND assign_user_id=:user_id',array(':org_id'=>Yii::app()->user->getState('org_id'),':user_id'=>Yii::app()->user->id));
			$role_name = RoleMaster::model()->findByPk($role_id->assign_role_id);
			//echo $role_name->role_master_name;
			if(Yii::app()->user->id != 1)
			Yii::app()->user->setState('role',$role_name->role_master_name);
			else
			Yii::app()->user->setState('role','sadmin');
		}
	 ?>

	<div id="mainmenu">
		<div id="nav-bar">	
		
		<?php 
			if(!Yii::app()->user->isGuest)
			{
				
				echo '<div class="left-menu-link"><ul id ="nav"><li>'.CHtml::link("Menu", "" ,array('onClick'=>'$("#menuwindow").dialog("open");return false;')).'</li></ul></div>';
	
			$studsession = Yii::app()->user->getState('stud_id');
			$empsession = Yii::app()->user->getState('emp_id');


		
				echo '<div class="right-menu-link"><ul id ="nav"><li class="welcome">Welcome, '.Yii::app()->user->name.'</li>';
				if(isset($studsession))
				{
					echo '<li class="pwd">'.CHtml::link("My Account",array('/studentTransaction/final_view/'.$studsession)).'</li>';
				}
				if(isset($empsession))
				{
					echo '<li class="pwd">'.CHtml::link("My Account",array('/employeeTransaction/final_view/'.$empsession)).'</li>';
				}

				echo '<li  class="pwd">'.CHtml::link(" Change Password", array('/user/change/')).'</li>';	
				echo '<li>'.CHtml::link(" Logout", array('/site/logout')).'</li></ul></div>';

			}
		?>

		</div>
	</div><!-- mainmenu -->


<!--menu window-->
<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'menuwindow',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Main Menu',
		'autoOpen'=>false,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>300,
                'resizable'=>false,
                'draggable'=>true,
		
	),
));
?>

<div class="main-div" style="display:none;">
	<div class="pop-mainorg-link">
	<?php
	echo CHtml::link("Create Organization",array('/organization/admin'));?>
	</div>

	<div class="pop-mainadmin-link">
	<?php
	echo CHtml::link("Create Admin",array('/user/admin'));?>
	</div>

	<div class="pop-mainpanel-link">
	<?php echo CHtml::link("","", array('onClick'=>'$("#master").dialog("open");return false;'));?>
	</div>

	<div class="pop-user-mng-link">
	<?php echo CHtml::link("User Managements",array('/rights'));?>
	</div>


</div>
<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>

<!--masters-->
<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'master',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Control Panel',
		'autoOpen'=>false,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>575,
                'resizable'=>false,
                'draggable'=>true,
		
	),
));
?>

<div class="main-div" style="display:none;">

	<div class="pop-master-link">
	<?php echo CHtml::link("Master","", array('onClick'=>'$("#master1").dialog("open");return false;'));?>
	</div>

	<div class="pop-emp-link">
	<?php echo CHtml::link("Employee",array('/employeeTransaction/admin'));?>
	</div>

	<div class="pop-stud-link">
	<?php echo CHtml::link("Student",array('/studentTransaction/admin'));?>
	</div>
<!--
	<div class="pop-stud-link">
	<?php echo CHtml::link("Student","", array('onClick'=>'$("#stud").dialog("open");return false;'));?>
	</div>
-->
	<div class="pop-fee-link">
	<?php echo CHtml::link("Fees","", array('onClick'=>'$("#fees").dialog("open");return false;'));?>
	</div>

	<div class="pop-dashboard-link">
	<?php echo CHtml::link("Dashboard","", array('onClick'=>'$("#my-dashboard").dialog("open");return false;'));?>
	</div>

	<div class="pop-inward-link">
	<?php echo CHtml::link("Inward",array('/inward/admin'));?>
	</div>

	<div class="pop-assest-link">
	<?php echo CHtml::link("assets",array('/assets/admin'));?>
	</div>

	<div class="pop-visitor-link">
	<?php echo CHtml::link("Visitor",array('/visitorPass/admin'));?>
	</div>

	<div class="pop-subject-link">
	<?php echo CHtml::link("Subject",array('/subjectMaster/admin'));?>
	</div>

	

	<div class="pop-assignSubject-link">
	<?php echo CHtml::link("Assign Subject",array('/assignSubject/admin'));?>
	</div>

	<div class="pop-outward-link">
	<?php echo CHtml::link("Outward",array('/outward/admin'));?>
	</div>

	<div class="pop-assign-org-link">
	<?php echo CHtml::link("Assign Organization",array('/assignCompanyUserTable/admin'));?>
	</div>

	<div class="pop-send-sms-link">
	<?php echo CHtml::link("Send SMS",array('/site/send_sms'));?>
	</div>


	<div class="pop-feedbackmaster-link">
	<?php echo CHtml::link("Feedback Master",array('/feedbackMaster/admin'));?>
	</div>

	<div class="pop-timetable-link">
	<?php echo CHtml::link("Timetable",array('/timeTable/admin'));?>
	</div>

	<div class="pop-login-history-link">
	
	<?php echo CHtml::link("Login History",array('/LoginUser/login_user'));?>
	</div>

	<div class="pop-miscellaneousfees-link">
	<?php echo CHtml::link("Miscellaneous Fees",array('/miscellaneousFeesPaymentTransaction'));?>
	</div>

	<div class="pop-roomdetails-link">
	<?php echo CHtml::link("Room Details",array('/roomDetailsMaster'));?>
	</div>

	<div class="pop-emp-sms-email-link">
	<?php echo CHtml::link("Student Sms/Email",array('/EmployeeSmsEmailDetails/admin'));?>
	</div>

	<div class="pop-stud-sms-email-link">
	<?php echo CHtml::link("Student Sms/Email",array('/StudentSmsEmailDetails/admin'));?>
	</div>

	<div class="pop-stud-attendance-link">
	<?php echo CHtml::link("Student Attendance",array('/attendence/admin'));?>
	</div>

	<div class="pop-emp-attendance-link">
	<?php echo CHtml::link("Employee Attendance",array('/employee_attendence/admin'));?>
	</div>

	<div class="pop-attendance-chart-link">
	<?php echo CHtml::link("View Attendance Chart",array('/attendence/ChartReport'));?>
	</div>
	
	<div class="pop-left-detained-student-link">
	<?php echo CHtml::link("Left Detained Student",array('/leftDetainedPassStudentTable/leftClearStudent'));?>
	</div>
		
	<div class="pop-resetpassword-link">
	<?php echo CHtml::link("Reset Password","", array('onclick'=>'$("#password").dialog("open");return false;'));?>
	</div>
</div>
<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>
<!-- Dashboard -->
<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'password',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Reset Password',
		'autoOpen'=>false,
		'modal'=>true,	
                'height'=>180,
                'width'=>210,
                'resizable'=>false,
                'draggable'=>true,
	),
));
?>




<div class = "main-div" style="display:none;">

	
	<div class="pop-studpassword-link" >
	<?php echo CHtml::link("Reset Student Password",array('/user/resetstudpassword'));?>
	</div>

	<div class="pop-emppassword-link">
	<?php echo CHtml::link("Reset Employee Password",array('/user/resetemppassword'));?>
	</div>
</div>


<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>

<!--student info-->

<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'stud',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Student Information',
		'autoOpen'=>false,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>210,
                'resizable'=>false,
                'draggable'=>true,
	),
));
?>

<div class="main-div" style="display:none;">
	<div class="pop-studadd-link">
	<?php echo CHtml::link("Add Student",array('/studentTransaction/create'));?>
	</div>
	<div class="pop-studaddfee-link">
	<?php echo CHtml::link("Add Student Fees",array('/studentTransaction/admin'));?>
	</div>
</div>

<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>


<!--fees info-->
<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'fees',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Fees Management',
		'autoOpen'=>false,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>240,
                'resizable'=>false,
                'draggable'=>true,
	),
));
?>

<div class="main-div" style="display:none;">
	<div class="pop-feemaster-link">
	<?php echo CHtml::link("Fees Master",array('/feesMaster/admin'));?>
	</div>
	<div class="pop-feetype-link">
	<?php echo CHtml::link("Fees Type",array('/feesPaymentType/admin'));?>
	</div>
	<div class="pop-studaddfee-link">
	<?php echo CHtml::link("Add Student Fees",array('/studentTransaction/admin'));?>
	</div>
	<div class="pop-print-recipt-link">
	<?php echo CHtml::link("Print Receipt",array('/feesPaymentTransaction/Branch_receipt_generate_print'));?>
	</div>
	<div class="pop-chequereturn-link">
	<?php echo CHtml::link("Cheque Return",array('/feesPaymentCheque/cheque_search'));?>
	</div>
	<div class="pop-misreport-link">
	<?php echo CHtml::link("MIS Report",array('/feesPaymentTransaction/mis_report'));?>
	</div>

	<div class="pop-range-receipt-link">
	<?php echo CHtml::link("Numberwise Receipt",array('/feesPaymentTransaction/Receipt_generate_print'));?>
	</div>

	<div class="pop-date-receipt-link">
	<?php echo CHtml::link("Datewise Receipt",array('/feesPaymentTransaction/date_report'));?>
	</div>

</div>

<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>

<!-- Dashboard -->
<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'my-dashboard',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Dashboard',
		'autoOpen'=>false,
		'modal'=>true,	
                'height'=>180,
                'width'=>210,
                'resizable'=>false,
                'draggable'=>true,
	),
));
?>

<div class="main-div" style="display:none;">
	<div class="pop-importantnotice-link">
	<?php echo CHtml::link("Important Notice",array('/importantNotice/admin'));?>
	</div>
	<div class="pop-gtunotice-link">
	<?php echo CHtml::link("Gtu Notice",array('/gtunotice/admin'));?>
	</div>
</div>


<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>


<!--masters2-->


<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'master1',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Master',
		'autoOpen'=>false,
		'modal'=>true,	
                'height'=>'auto',
                'width'=>620,
                'resizable'=>false,
                'draggable'=>true,
	),
));
?>

<div class="main-div" style="display:none;">

<div class="master2">

<div class="pop-batch-link">
<?php echo CHtml::link("Batch",array('/batch/admin'));?> 
</div>

<div class="pop-branch-link">
<?php echo CHtml::link("Branch",array('/branch/admin'));?>
</div>

<div class="pop-category-link">
<?php echo CHtml::link("Category",array('/category/admin'));?>
</div>

<div class="pop-department-link">
<?php echo CHtml::link("Department",array('/department/admin'));?>
</div>

<div class="pop-division-link">
<?php echo CHtml::link("Division",array('/division/admin'));?>
</div>

<div class="pop-empdesi-link">
<?php echo CHtml::link("Employee Designation",array('/employeeDesignation/admin'));?>
</div>

<div class="pop-nationality-link">
<?php echo CHtml::link("Nationality",array('/nationality/admin'));?>
</div>

<div class="pop-quota-link">
<?php echo CHtml::link("Quota",array('/quota/admin'));?>
</div>

<div class="pop-religion-link">
<?php echo CHtml::link("Religion",array('/religion/admin'));?>
</div>

<div class="pop-shift-link">
<?php echo CHtml::link("Shift",array('/shift/admin'));?>
</div>

<div class="pop-city-link">
<?php echo CHtml::link("City",array('/city/admin'));?>
</div>

<div class="pop-state-link">
<?php echo CHtml::link("State",array('/state/admin'));?>
</div>

<div class="pop-country-link">
<?php echo CHtml::link("Country",array('/country/admin'));?>
</div>

<div class="pop-bankMaster-link">
<?php echo CHtml::link("Bank Master",array('/bankMaster/admin'));?>
</div>

<div class="pop-language-link">
<?php echo CHtml::link("Languages",array('/languages/admin'));?>
</div>

<div class="pop-itemCateogry-link">
<?php echo CHtml::link("Item Category",array('/itemCategory/admin'));?>
</div>

<div class="pop-eduboard-link">
<?php echo CHtml::link("Education Board",array('/eduboard/admin'));?>
</div>

<div class="pop-qualification-link">
<?php echo CHtml::link("Qualification",array('/qualification/admin'));?>
</div>
<div class="pop-subject-type-link">
	<?php echo CHtml::link("Subject Type",array('/subjectType/admin'));?>
	</div>

<div class="pop-academicTermPeriod-link">
<?php echo CHtml::link("Academic Term Period",array('/academicTermPeriod/admin'));?>
</div>

<div class="pop-miscellaneousfeesmaster-link">
<?php echo CHtml::link("Miscellaneous Fees Master",array('/miscellaneousFeesMaster/admin'));?>
</div>

<div class="pop-roomcategorymaster-link">
<?php echo CHtml::link("Room Category Master",array('/roomCategory/admin'));?>
</div>

<div class="pop-academicTermName-link">
<?php echo CHtml::link("Academic Term Name",array('/academicTerm/admin'));?>
</div>

<div class="pop-studentstatus-link">
<?php echo CHtml::link("Student Status",array('/Studentstatusmaster/admin'));?>
</div>

<div class="pop-branchtags-link">
<?php echo CHtml::link("Branch Tags",array('/BranchPassoutsemTagTable/admin'));?>
</div>

<div class="pop-year-link">
<?php echo CHtml::link("Year",array('/Year/admin'));?>
</div>

<div class="pop-feesterm-link">
<?php echo CHtml::link("Fees Terms & Conditions",array('/FeesTermsAndCondition/admin'));?>
</div>
</div>
</div>
<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>



	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
		    'homeLink'=>CHtml::link('Home', array('/dashboard')),
		    'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->


	<?php endif?>

	<?php echo $content; ?>

	<div id="footer">
		<b>Copyright &copy; <?php echo date('Y'); ?> Rudra Softech.<br/>
		All Rights Reserved.<br/>
		<?php // echo Yii::powered(); ?></b>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>

