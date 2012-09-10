
<!--<div class="loghead">-->
<!--</div>-->
<!--<?php        

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
	'id'=>'mydialog',
	// additional javascript options for the dialog plugin
	'options'=>array(
		'title'=>'Login to the System',
		'autoOpen'=>true,
		'modal'=>true,	
                'height'=>400,
                'width'=>400,
                'resizable'=>false,
                'draggable'=>false,
	),
));
?>-->

<div class="form login-form">
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'login-form',
	'enableClientValidation'=>true,
	'focus'=>array($model,'username'),
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
	),
)); ?>

	
	<!--<p class="note">Fields with <span class="required">*</span> are required.</p>-->

<!--<table>
        <tr>
		<td colspan="2">
           	<div class="block-error">
		  <?php echo Yii::app()->user->getFlash('block'); ?>
		</div></td>
	</tr>
	<tr>
	    <td>
		<?php echo $form->labelEx($model,'username'); ?>
            </td>
            <td>
		<?php  echo $form->textField($model,'username'); ?>
                <?php //echo $form->dropDownList($model,"username",$temp); ?>
		<?php echo $form->error($model,'username'); ?>
            </td>
        </tr>

        <tr>
            <td>
		<?php echo $form->labelEx($model,'password'); ?>
            </td>
            <td>
		<?php echo $form->passwordField($model,'password'); ?>
		<?php echo $form->error($model,'password'); ?>
            </td>
        </tr>
	<?php if($model->scenario == 'captchaRequired'):?>
	<tr>
	   
            <td colspan="2" class="captcha-img" id="captcha-img">
		<?php $this->widget('CCaptcha'); ?>
			
		<?php echo $form->textField($model,'verifyCode');?><span class="status">&nbsp;</span>
	    </td>
	 <td>
		
            </td>
	</tr>
	<?php endif; ?>

        <tr>
            <td colspan="2" align="center">
		<?php echo CHtml::submitButton('Login',array('class'=>'submit')); ?>
            </td>
            <td>
            </td>
        </tr>
    </table>-->
<div >
	<div>
	    <div class="block-error">
		<?php echo Yii::app()->user->getFlash('block'); ?>
	    </div>
	</div>
	<div>
	    <div class="row_text">
		<?php echo $form->labelEx($model,'username'); ?>
            	<?php  echo $form->textField($model,'username'); ?>
		<?php echo $form->error($model,'username'); ?>
            </div>
        </div>
        <div>
            <div class="row_text">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password'); ?>
		<?php echo $form->error($model,'password'); ?>
            </div>
	</div>

	<?php if($model->scenario == 'captchaRequired'):?>
	<div style="padding-top:100px; padding-left:20px; margin-left:100px;">	   
            <div>
		<?php $this->widget('CCaptcha'); ?>			
		<?php echo $form->textField($model,'verifyCode');?><span class="status">&nbsp;</span>
	    </div>
	</div>
	<?php endif; ?>
        <div style="padding-left:140px;">
            <div>
		<?php echo CHtml::submitButton('Login',array('align'=>'center','class'=>'submit')); ?>
	    </div>
        </div>
</div>

<!--
	<div class="row rememberMe">
		<?php echo $form->checkBox($model,'rememberMe'); ?>
		<?php echo $form->label($model,'rememberMe'); ?>
		<?php echo $form->error($model,'rememberMe'); ?>
	</div>
-->

<?php $this->endWidget(); ?>
</div><!-- form -->
<!--<?php
$this->endWidget('zii.widgets.jui.CJuiDialog');

// the link that may open the dialog
echo CHtml::link('Click here to Login', '#', array(
	'onclick'=>'$("#mydialog").dialog("open"); return false;',
));

        
?>-->
