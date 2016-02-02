<?php
/**
* @package 		EasyBlog
* @copyright	Copyright (C) 2010 - 2013 Stack Ideas Sdn Bhd. All rights reserved.
* @license 		Proprietary Use License http://stackideas.com/licensing.html
* @author 		Stack Ideas Sdn Bhd
*/
defined( '_JEXEC' ) or die( 'Unauthorized Access' );
?>
<!-- Author wrapper -->
<div id="author-post" class="author-post">

		


		<?php  echo EasyBlogHelper::getHelper( 'Achievements' )->getHTML( $blogger->id ); ?>

		<?php if( $system->config->get('main_showauthorposts') && !empty($authorRecentPosts) && ( count( $authorRecentPosts ) > 0 ) ) { ?>
		<div class="clear"></div>		
		<div class="related-post-inner">
			<h3 class="related-post-title"><span><?php echo JText::_('COM_EASYBLOG_AUTHOR_RECENT_POSTS'); ?></span></h3>
			<ul class="entry-related-post reset-ul">
			<?php foreach( $authorRecentPosts as $aitem ){ ?>
				<li id="entry_<?php echo $aitem->id; ?>">
					<a href="<?php echo EasyBlogRouter::_('index.php?option=com_easyblog&view=entry&id='.$aitem->id); ?>"><?php echo $aitem->title; ?></a> 
					<!-- - <a href="<?php echo EasyBlogRouter::_( 'index.php?option=com_easyblog&view=categories&layout=listings&id=' . $aitem->category_id );?>" class="blog-category small"><?php echo $this->escape( JText::_( $aitem->category ) ); ?></a>
					<span class="blog-date float-r small"><?php echo $this->formatDate( $system->config->get('layout_shortdateformat'), $aitem->created ); ?></span>-->
				</li>
			<?php } ?>
		    </ul>
	    </div>
		<?php } ?>



</div>
