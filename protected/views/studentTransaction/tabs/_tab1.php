<div class="row">    
		<?php echo $form->labelEx($info,'student_roll_no'); ?>   
		<?php echo $form->textField($info,'student_roll_no',array('size'=>18,'maxlength'=>10,'tabindex'=>1)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($info,'student_roll_no'); ?>
</div>
<div class="row">    

	<div class="row-left">
		<?php echo $form->labelEx($info,'student_gr_no'); ?>   
		<?php echo $form->textField($info,'student_gr_no',array('size'=>18,'maxlength'=>15,'tabindex'=>2)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($info,'student_gr_no'); ?>
	</div>
	

	<div class="row-right">
		<?php echo $form->labelEx($info,'student_merit_no'); ?>   
		<?php echo $form->textField($info,'student_merit_no',array('size'=>18,'maxlength'=>15,'tabindex'=>3)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($info,'student_merit_no'); ?>   
	</div>
</div>

    <div class="row">
	<div class="row-left">
	  <?php echo $form->labelEx($info,'student_adm_date'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',
		    array(
			'model'=>$info,
			'attribute'=>'student_adm_date',
			'language' => 'en',
			'options' => array(
			    'dateFormat'=>'yy-mm-dd',
			    'changeMonth' => 'true',
			    'changeYear' => 'true',
			    'duration'=>'fast',
			    'showAnim' =>'slide',
			    
			),
			'htmlOptions'=>array('tabindex'=>4,
			'style'=>'height:18px;
			    padding-left: 4px;width:168px;'

			)
		    )
		);
	?>
	<span class="status">&nbsp;</span>
		<?php echo $form->error($info,'student_adm_date'); ?>
	</div>

	<div class="row-right">
        <?php echo $form->labelEx($info,'student_enroll_no'); ?>
        <?php echo $form->textField($info,'student_enroll_no',array('size'=>18,'maxlength'=>12,'tabindex'=>5)); ?><span class="status">&nbsp;</span>
        <?php //echo $form->error($info,'student_enroll_no'); ?>
	</div>
 </div>

<div class="row">
		<div class="row-left">
		<?php echo $form->labelEx($info,'title'); ?>   
		<?php echo $form->dropdownList($info,'title',$info->getTitleOptions(), array('empty' => '-----------Select---------','tabindex'=>6)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($info,'title'); ?>

		</div>
		<div class="row-right">
			<?php echo $form->error($info,'student_enroll_no'); ?>		
		</div>
</div>




<div class="row">   

    <div class="row-left">   
        <?php echo $form->labelEx($info,'student_first_name'); ?>
	<?php echo $form->textField($info,'student_first_name',array('size'=>18,'maxlength'=>25,'tabindex'=>7)); ?><span class="status">&nbsp;</span>
	 <?php echo $form->error($info,'student_first_name'); ?>       
    </div>   

    <div class="row-right">   
	<?php echo $form->labelEx($info,'student_middle_name'); ?>
	<?php echo $form->textField($info,'student_middle_name',array('size'=>18,'maxlength'=>25,'tabindex'=>8)); ?><span class="status">&nbsp;</span>        
	<?php echo $form->error($info,'student_middle_name'); ?>
    </div>   
</div>
<div class="row">   
    <div class="row-left">   
	<?php echo $form->labelEx($info,'student_last_name'); ?>
	<?php echo $form->textField($info,'student_last_name',array('size'=>18,'maxlength'=>25,'tabindex'=>9)); ?><span class="status">&nbsp;</span>
	<?php echo $form->error($info,'student_last_name'); ?>
    </div>   

	<div class="row-right">
	<?php echo $form->labelEx($info,'student_mother_name'); ?>
	<?php echo $form->textField($info,'student_mother_name',array('size'=>18,'maxlength'=>25,'tabindex'=>10)); ?><span class="status">&nbsp;</span>        
	<?php echo $form->error($info,'student_mother_name'); ?>
	</div>

	
   </div>


    <div class="row">
<!--	<div class="row-left">
        <?php echo $form->labelEx($info,'student_father_name'); ?>
	<?php echo $form->textField($info,'student_father_name',array('size'=>18,'maxlength'=>25,'tabindex'=>10)); ?><span class="status">&nbsp;</span>
	<?php echo $form->error($info,'student_father_name'); ?>
	</div>
-->

</div>

<div class="row">

	<div class="row-left">
		<?php echo $form->labelEx($info,'student_gender'); ?>
		<?php echo $form->dropdownList($info,'student_gender',$info->getGenderOptions(), array('empty' => '-----------Select---------','tabindex'=>11)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($info,'student_gender'); ?>
	</div>

	<div class="row-right">
		<?php echo $form->labelEx($info,'student_mobile_no'); ?>   
		<?php echo $form->textField($info,'student_mobile_no',array('size'=>18,'maxlength'=>15,'tabindex'=>12)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($info,'student_mobile_no'); ?>
	</div>

    </div>


    <div class="row">
	<div class="row-left">
        <?php echo $form->labelEx($info,'student_birthplace'); ?>
        <?php echo $form->textField($info,'student_birthplace',array('size'=>18,'maxlength'=>25,'tabindex'=>13)); ?><span class="status">&nbsp;</span>
        <?php echo $form->error($info,'student_birthplace'); ?>
	</div>
	
	<div class="row-right">

        <?php echo $form->labelEx($info,'student_dob'); ?>
	<?php
	$this->widget('zii.widgets.jui.CJuiDatePicker',
	    array(
	        'model'=>$info,
	        'attribute'=>'student_dob',
	        'language' => 'en',
	        'options' => array(
	            'dateFormat'=>'yy-mm-dd',
	            'changeMonth' => 'true',
	            'changeYear' => 'true',
	            'duration'=>'fast',
	            'showAnim' =>'slide',
	        ),
	        'htmlOptions'=>array('tabindex'=>14,
	        'style'=>'height:18px;
	            padding-left: 4px;width:168px;'
	        )
	    )
	);
?><span class="status">&nbsp;</span>
	<?php echo $form->error($info,'student_dob'); ?>
	</div>

    </div>

    <div class="row">

	<div class="row-left">
        <?php echo $form->labelEx($model,'student_transaction_nationality_id'); ?>
        <?php echo $form->dropDownList($model,'student_transaction_nationality_id',Nationality::items(), array('empty' => '-----------Select---------','tabindex'=>15)); ?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'student_transaction_nationality_id'); ?>
	</div>

	<div class="row-right">
        <?php echo $form->labelEx($model,'student_transaction_religion_id'); ?>
        <?php echo $form->dropDownList($model,'student_transaction_religion_id',Religion::items(), array('empty' => '-----------Select---------','tabindex'=>16)); ?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'student_transaction_religion_id'); ?>
	</div>

    </div>

    <div class="row">
	<div class="row-left">
        <?php echo $form->labelEx($model,'student_transaction_quota_id'); ?>
        <?php echo $form->dropDownList($model,'student_transaction_quota_id',Quota::items(), array('empty' => '-----------Select---------','tabindex'=>17)); ?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'student_transaction_quota_id'); ?>
	</div>

	<div class="row-right">
        <?php echo $form->labelEx($model,'student_transaction_branch_id'); ?>
        <?php echo $form->dropDownList($model,'student_transaction_branch_id',Branch::items(), array('empty' => '-----------Select---------','tabindex'=>18)); ?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'student_transaction_branch_id'); ?>
	</div>

    </div>

    <div class="row">

	<div class="row-left">
        <?php echo $form->labelEx($model,'student_transaction_category_id'); ?>
        <?php echo $form->dropDownList($model,'student_transaction_category_id',Category::items(), array('empty' => '-----------Select---------','tabindex'=>19)); ?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'student_transaction_category_id'); ?>
	</div>

	<div class="row-right">
		<?php echo $form->labelEx($info,'student_living_status'); ?>   
		<?php echo $form->dropdownList($info,'student_living_status',$info->getLivingOptions(), array('empty' => '-----------Select---------','tabindex'=>20)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($info,'student_living_status'); ?>
	</div>

</div>
<div class="row">
	<div class="row-left">
        <?php echo $form->labelEx($model,'student_academic_term_period_tran_id'); ?>
        <?php //echo $form->dropDownList($model,'student_academic_term_period_tran_id',AcademicTermPeriod::items(), array('empty' => '-----------Select---------','tabindex'=>17)); ?>
	<?php
			echo $form->dropDownList($model,'student_academic_term_period_tran_id',AcademicTermPeriod::items(),
			array(
			'prompt' => '-----------Select-----------','tabindex'=>21,
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('StudentTransaction/getItemName'), 
			'update'=>'#StudentTransaction_student_academic_term_name_id', //selector to update
			
			))); 
			 
			?><span class="status">&nbsp;</span>
        <?php echo $form->error($model,'student_academic_term_period_tran_id'); ?>
	</div>
	<div class="row-right">
		<?php echo $form->labelEx($model,'student_academic_term_name_id'); ?>
	        <?php //echo $form->dropDownList($model,'student_academic_term_name_id',array()); ?>
		<?php 
			
			if(isset($model->student_academic_term_name_id))
				echo $form->dropDownList($model,'student_academic_term_name_id', CHtml::listData(AcademicTerm::model()->findAll(array('condition'=>'academic_term_period_id='.$model->student_academic_term_period_tran_id)), 'academic_term_id', 'academic_term_name'));
			else
				echo $form->dropDownList($model,'student_academic_term_name_id',array('prompt' => '-----------Select-----------'),array('tabindex'=>22)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'student_academic_term_name_id'); ?>
	</div>	


    </div>
	<div class="row-right">
		<?php echo $form->labelEx($info,'student_dtod_regular_status'); ?>   
		<?php echo $form->dropdownList($info,'student_dtod_regular_status',$info->getStatusOptions(), array('empty' => '-----------Select---------','tabindex'=>20)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($info,'student_dtod_regular_status'); ?>
	</div>

    <div class="row">
	      <?php echo $form->labelEx($photo,'student_photos_path'); ?>
	      <?php CHtml::form('','post',array('enctype'=>'multipart/form-data')); ?>
	      <?php echo CHtml::activeFileField($photo, 'student_photos_path',array('tabindex'=>23)); ?><span class="status">&nbsp;</span>
	      <?php CHtml::endForm(); ?>
</div>

