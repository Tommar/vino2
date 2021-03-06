<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Create a shortcut for params.
$params = &$this->item->params;
$images = json_decode($this->item->images);
$canEdit = $this->item->params->get('access-edit');
$info = $this->item->params->get('info_block_position', 0);
?>
<?php if ($this->item->state == 0) : ?>
<div class="system-unpublished">
<?php endif; ?>

  <!-- Article -->
  <article>
	
	
	<?php 
			 if (isset($images->image_intro) && !empty($images->image_intro)) {
			?>
			<?php $imgfloat = (empty($images->float_intro)) ? $params->get('float_intro') : $images->float_intro; ?>
			
				<div class="img-intro pull-<?php echo htmlspecialchars($imgfloat); ?>">
				<img src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"/>
				<?php // if ($images->image_intro_caption):
					//	echo '<div class="caption"'.' title="' .htmlspecialchars($images->image_intro_caption) .'">'.htmlspecialchars($images->image_intro_caption).'</div>';
					// endif; ?>
				</div>
				
			<?php 
			}else{ 
				preg_match("/<img(.+?)src=[\"\'](.+?)[\"\'](.*?)>/", $this->item->introtext, $matches);  
				//preg_match("/src=[\"\'](.+?)[\"\']/", $matches[0], $src); 
				if($matches):
					preg_match("/src=[\"\'](.+?)[\"\']/", $matches[0], $src); 			
					$img = $src[0];	
			?>
				<div class="img-intro">
					<img <?php  echo $img; ?>  />
					<?php // if ($images->image_intro_caption):
					//	echo '<div class="caption"'.' title="' .htmlspecialchars($images->image_intro_caption) .'">'.htmlspecialchars($images->image_intro_caption).'</div>';
					// endif; ?>
				</div><!-- img-intro -->

			<?php endif;	} ?>
	
	
	
	
	
	<div class="catItemHeader">
	
	<?php if ($params->get('show_publish_date')) : ?>
    <div class="list_blog_date">
		<div class="date_month"><?php echo JHtml::_('date', $this->item->publish_up, 'M'); ?></div>
		<div class="date_year"><?php echo JHtml::_('date', $this->item->publish_up, 'Y'); ?></div>
    </div>
    <?php endif; ?>
	
	
	
	<div class="content_item_header">
		<?php if ($params->get('show_title')) : ?>
			<h3 class="catItemTitle">
				<?php if ($params->get('link_titles') && $params->get('access-view')) : ?>
				<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid)); ?>"> <?php echo $this->escape($this->item->title); ?></a>
				<?php else : ?>
				<?php echo $this->escape($this->item->title); ?>
				<?php endif; ?>
			</h3>
		<?php endif; ?>
		
		
		<?php if (($params->get('show_author') && !empty($this->item->author)) || $params->get('show_category') ): ?>
			<div class="content_item_infor">
				<?php if ($params->get('show_author') && !empty($this->item->author)) : ?>
				<div class="catItemAuthor">
				  <?php $author =  $this->item->author; ?>
				  <?php $author = ($this->item->created_by_alias ? $this->item->created_by_alias : $author);?>

					<?php if (!empty($this->item->contactid ) &&  $params->get('link_author') == true):?>
					  <?php 	echo JText::sprintf('COM_CONTENT_WRITTEN_BY' ,
					  '<span>'.JHtml::_('link',JRoute::_('index.php?option=com_contact&view=contact&id='.$this->item->contactid),$author).'</span>'); ?>
					<?php else :?>
					  <?php echo JText::sprintf('COM_CONTENT_WRITTEN_BY', '<span>'.$author.'</span>'); ?>
					<?php endif; ?>
				</div>
				<?php endif; ?>
				
				
				<?php if ($params->get('show_category')) : ?>
				<div class="catItemCategory">
				  <?php $title = $this->escape($this->item->category_title);
					$url = '<a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->catslug)).'">'.$title.'</a>';?>
				  <?php if ($params->get('link_category') AND $this->item->catslug) : ?>
					<?php echo JText::sprintf('COM_CONTENT_CATEGORY', '<span>'.$url.'</span>'); ?>
					<?php else : ?>
					<?php echo JText::sprintf('COM_CONTENT_CATEGORY', '<span>'.$title.'</span>'); ?>
				  <?php endif; ?>
				</div>
				<?php endif; ?>
				
				  <!-- Aside -->
				  <?php if (($params->get('show_print_icon')) or ($params->get('show_email_icon')) or ($canEdit)) : ?>
				  <aside class="article-aside clearfix">
				  <?php if ($params->get('show_print_icon') || $params->get('show_email_icon') || $canEdit) : ?>
				<div class="btn-group pull-right"> <a class="btn dropdown-toggle" data-toggle="dropdown" href="#" role="button"> <span class="icon-cog"></span><span class="caret"></span> </a>
					<ul class="dropdown-menu">
						<?php if ($params->get('show_print_icon')) : ?>
						<li class="print-icon"> <?php echo JHtml::_('icon.print_popup', $this->item, $params); ?> </li>
						<?php endif; ?>
						<?php if ($params->get('show_email_icon')) : ?>
						<li class="email-icon"> <?php echo JHtml::_('icon.email', $this->item, $params); ?> </li>
						<?php endif; ?>
						<?php if ($canEdit) : ?>
						<li class="edit-icon"> <?php echo JHtml::_('icon.edit', $this->item, $params); ?> </li>
						<?php endif; ?>
					</ul>
				</div>
				<?php endif; ?>
				  
				  </aside>
				  <?php endif; ?>
				  <!-- //Aside -->
				
			<div style="clear:both; float:none;"></div>
			</div>
		<?php endif; ?>
			
			
			
	</div>
	
	</div>	
<div class="catItemBody">
  <div class="catItemIntroText">
	<?php if (!$params->get('show_intro')) : ?>
    <?php echo $this->item->event->afterDisplayTitle; ?>
	<?php endif; ?>

  <?php echo $this->item->event->beforeDisplayContent; ?>

 
    <?php echo strip_tags($this->item->introtext,'<a><br><p><b><div><span><script>'); ?>
  </div>
</div>

  <?php if (($params->get('show_modify_date')) or ($params->get('show_hits'))) : ?>
  <div class="itemLinks">
	
		<?php if ($params->get('show_hits')) : ?>
			<div class="item_footer"> 
				<div class="item_footer_inner">
					<?php echo JText::sprintf('COM_CONTENT_ARTICLE_HITS', '<span>'.$this->item->hits.'</span>'); ?>
				</div>
			</div>
		<?php endif; ?>
		
	
		<?php if ($params->get('show_modify_date')) : ?>
			<div class="item_footer"> 
				<div class="item_footer_inner">
					<?php echo JText::sprintf('COM_CONTENT_LAST_UPDATED', '<span>'.JHtml::_('date', $this->item->modified, JText::_('DATE_FORMAT_LC3')).'</span>'); ?> 
				</div>
			</div>
		<?php endif; ?>
	  
	  
		<?php if ($params->get('show_create_date')) : ?>
			<div class="item_footer"> 
				<div class="item_footer_inner">
					<?php echo JText::sprintf('COM_CONTENT_CREATED_DATE_ON', '<span>'.JHtml::_('date',$this->item->created, JText::_('DATE_FORMAT_LC3')).'</span>'); ?>
				</div>
			</div>
		<?php endif; ?>

		<?php if ($params->get('show_parent_category') && $this->item->parent_id != 1) : ?>
		<div class="item_footer"> 
			<div class="item_footer_inner">
			  <?php $title = $this->escape($this->item->parent_title);
				$url = '<a href="' . JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->parent_slug)) . '">' . $title . '</a>'; ?>
			  <?php if ($params->get('link_parent_category') AND $this->item->parent_slug) : ?>
				<?php echo JText::sprintf('COM_CONTENT_PARENT', '<span>'.$url.'</span>'); ?>
				<?php else : ?>
				<?php echo JText::sprintf('COM_CONTENT_PARENT', '<span>'.$title.'</span>'); ?>
			  <?php endif; ?>
			</div>
		</div>
		<?php endif; ?>
	  
	  
  </div>
  <?php endif; ?>
  
  <?php if ($this->params->get('show_tags', 1) && !empty($this->item->tags)) : ?>
    <?php $this->item->tagLayout = new JLayoutFile('joomla.content.tags'); ?>
    <?php echo $this->item->tagLayout->render($this->item->tags->itemTags); ?>
  <?php endif; ?>
  
	<?php if ($params->get('show_readmore') && $this->item->readmore) :
	if ($params->get('access-view')) :
		$link = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid));
	else :
		$menu = JFactory::getApplication()->getMenu();
		$active = $menu->getActive();
		$itemId = $active->id;
		$link1 = JRoute::_('index.php?option=com_users&view=login&Itemid=' . $itemId);
		$returnURL = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid));
		$link = new JURI($link1);
		$link->setVar('return', base64_encode($returnURL));
	endif;
	?>
  <div class="catItemReadMore">
    <a class="k2ReadMore" href="<?php echo $link; ?>"><span>
    <?php if (!$params->get('access-view')) :
        echo JText::_('COM_CONTENT_REGISTER_TO_READ_MORE');
      elseif ($readmore = $this->item->alternative_readmore) :
        echo $readmore;
        if ($params->get('show_readmore_title', 0) != 0) :
            echo JHtml::_('string.truncate', ($this->item->title), $params->get('readmore_limit'));
        endif;
      elseif ($params->get('show_readmore_title', 0) == 0) :
        echo JText::sprintf('COM_CONTENT_READ_MORE_TITLE');
      else :
        echo JText::_('COM_CONTENT_READ_MORE');
        echo JHtml::_('string.truncate', ($this->item->title), $params->get('readmore_limit'));
      endif; ?>
    </span></a>
  </div>
	<?php endif; ?>
  </article>
  <!-- //Article -->
  
<?php if ($this->item->state == 0) : ?>
</div>
<?php endif; ?>
<?php echo $this->item->event->afterDisplayContent; ?>
