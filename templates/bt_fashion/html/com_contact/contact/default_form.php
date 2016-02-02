<?php

 /**
 * @package		Joomla.Site
 * @subpackage	com_contact
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;
JHtml::_('behavior.keepalive');
JHtml::_('behavior.formvalidation');
JHtml::_('behavior.tooltip');
 if (isset($this->error)) : ?>
	<div class="contact-error">
		<?php echo $this->error; ?>
	</div>
<?php endif; ?>

<div class="contact-form">
	<form id="contact-form" action="<?php echo JRoute::_('index.php'); ?>" method="post" class="form-validate">
		<fieldset>
			<div class="contact_form_field">
			
			<div class="form_field_margin">
				<div class="form_field_50">
					<div class="form_field_50_inner">
						<div class="contact_name_field">
							<div class="contact_label"><?php echo $this->form->getLabel('contact_name'); ?></div>
							<div class="contact_input"><?php echo $this->form->getInput('contact_name'); ?></div>
						</div>
						<div class="contact_email_field">	
							<div class="contact_label"><?php echo $this->form->getLabel('contact_email'); ?></div>
							<div class="contact_input"><?php echo $this->form->getInput('contact_email'); ?></div>
						</div>
						<div class="contact_subject_field">
							<div class="contact_label"><?php echo $this->form->getLabel('contact_subject'); ?></div>
							<div class="contact_input"><?php echo $this->form->getInput('contact_subject'); ?></div>
						</div>
					</div>
				</div>		
				
				<div class="form_field_50">
					<div class="form_field_50_inner">
						<div class="contact_message_field">
							<div class="contact_label"><?php echo $this->form->getLabel('contact_message'); ?></div>
							<div class="contact_input"><?php echo $this->form->getInput('contact_message'); ?></div>
						</div>
					</div>
				</div>
				<div style="clear:both;"></div>
			</div>
				
				<?php 	if ($this->params->get('show_email_copy')){ ?>
					<div class="contact_copy_field">
						<div class="contact_email_copy_input"><?php echo $this->form->getInput('contact_email_copy'); ?></div>
						<div class="contact_email_copy_label contact_label"><?php echo $this->form->getLabel('contact_email_copy'); ?></div>
					</div>
				<?php 	} ?>
			<?php //Dynamically load any additional fields from plugins. ?>
			     <?php foreach ($this->form->getFieldsets() as $fieldset): ?>
			          <?php if ($fieldset->name != 'contact'):?>
			               <?php $fields = $this->form->getFieldset($fieldset->name);?>
			               <?php foreach($fields as $field): ?>
			                    <?php if ($field->hidden): ?>
			                         <?php echo $field->input;?>
			                    <?php else:?>
			                         <dt>
			                            <?php echo $field->label; ?>
			                            <?php if (!$field->required && $field->type != "Spacer"): ?>
			                               <span class="optional"><?php echo JText::_('COM_CONTACT_OPTIONAL');?></span>
			                            <?php endif; ?>
			                         </dt>
			                         <dd><?php echo $field->input;?></dd>
			                    <?php endif;?>
			               <?php endforeach;?>
			          <?php endif ?>
			     <?php endforeach;?>
				
				<div class="contact_submit_button"><button class="button validate" type="submit"><?php echo JText::_('COM_CONTACT_CONTACT_SEND'); ?></button>
					<input type="hidden" name="option" value="com_contact" />
					<input type="hidden" name="task" value="contact.submit" />
					<input type="hidden" name="return" value="<?php echo $this->return_page;?>" />
					<input type="hidden" name="id" value="<?php echo $this->contact->slug; ?>" />
					<?php echo JHtml::_( 'form.token' ); ?>
				</div>
			</div>
		</fieldset>
	</form>
</div>
