<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Secure Education Management System',

	
	// preloading 'log' component
	'preload'=>array('log'),

	

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.extensions.jtogglecolumn.*',
		'application.extensions.AjaxList.AjaxList',
		'application.components.*',

		'application.modules.rights.*',
		'application.modules.rights.components.*',

	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
	
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'secure',
		 	// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),
		
		'rights'=>array(
			'install'=>false,
			'superuserName'=>'SuperAdmin',
			'authenticatedName'=>'Authenticated',
			'userIdColumn'=>'user_id',
			'userNameColumn'=>'user_organization_email_id',
			'userTypeColumn'=>'user_type',
			'enableBizRule'=>true,
			'enableBizRuleData'=>false,
			'displayDescription'=>true,
			'flashSuccessKey'=>'RightsSuccess',
			'flashErrorKey'=>'RightsError',
			'baseUrl'=>'/rights',
			'layout'=>'rights.views.layouts.main',
			'appLayout'=>'application.views.layouts.main',
			'cssFile'=>'rights.css',
			'debug'=>false,
			),

	    'dashboard' => array(
	      'debug' => true,
	      'portlets' => array(
		'News' => array('class' => 'News', 'visible' => true, 'weight' => 0), 
		'Important_notice' => array('class' => 'Important_notice', 'visible' => true, 'weight' => 1), 
		'Messages' => array('class' => 'Messages', 'visible' => true, 'weight' => 2), 
		'GTU_Notice' => array('class' => 'GTUNotice', 'visible' => true, 'weight' => 3), 
		'Calendar' => array('class' => 'Calendar', 'visible' => true, 'weight' => 4),
		'Attendance' => array('class' => 'Attendance', 'visible' => true, 'weight' => 5),
		'GalleryView' => array('class' => 'GalleryView', 'visible' => true, 'weight' => 6),
		//'Karmraj' => array('class' => 'Karmraj', 'visible' => true, 'weight' => 7),

	      ),
	    ),

	),

	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
			'class'=>'RWebUser',
		),

		'phpThumb'=>array(
		    'class'=>'ext.EPhpThumb.EPhpThumb',
		    
		),

		'authManager'=>array(
		'class'=>'RDbAuthManager',
		),


		// uncomment the following to enable URLs in path-format
		/*
		'urlManager'=>array(
			'urlFormat'=>'path',
			'rules'=>array(
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
		),
		*/
		'urlManager'=>array(
			'urlFormat'=>'path',
			'rules'=>array(
		
				
			 'gii'=>'gii',
		         'gii/<controller:\w+>'=>'gii/<controller>',
		         'gii/<controller:\w+>/<action:\w+>'=>'gii/<controller>/<action>',

				
			'<controller:\w+>/<id:\d+>'=>'<controller>/view',
			'<controller:\w+>/<action:\w+>/<id:\d+>/*'=>'<controller>/<action>',

			'<controller:\w+>/<action:\w+>'=>'<controller>/<action>', 
                                

			'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			'<module:\w+>/<controller:\w+>/<action:\w+>'=>'<module>/<controller>/<action>'		
			

			),
		'showScriptName'=>false,
		),
		/*
		/*'db'=>array(
			'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
		),*/
		// uncomment the following to use a MySQL database

		'db'=>array(

			'connectionString' => 'mysql:host=localhost;dbname=ems_20120904',
			'emulatePrepare' => true,
			'username' => 'root',
			'password' => 'ubuntu',
			'charset' => 'utf8',
		),

		'errorHandler'=>array(
			// use 'site/error' action to display errors
            'errorAction'=>'site/error',
        ),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning, trace, info',
					'categories'=>'system.*',

				),
//				array(
//				    'class'=>'CEmailLogRoute',
//				    'levels'=>'error, warning',
//				    'emails'=>'karmraj@rudrasoftech.com',
//				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'webmaster@example.com',
		'webRoot' => dirname(dirname(__FILE__).DIRECTORY_SEPARATOR.'..')

	),
);
