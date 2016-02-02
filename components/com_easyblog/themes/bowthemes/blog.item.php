<?php
/**
 * @package		EasyBlog
 * @copyright	Copyright (C) 2010 Stack Ideas Private Limited. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 *
 * EasyBlog is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */
defined('_JEXEC') or die('Restricted access');
?>
<!-- Post item wrapper -->
<div id="entry-<?php echo $row->id; ?>" class="blog-post clearfix prel<?php echo (!empty($row->team)) ? ' teamblog-post' : '' ;?>" itemscope itemtype="http://schema.org/Blog">
	<div class="blog-post-in">

		<!-- @template: Admin tools -->
		<?php echo $this->fetch( 'blog.admin.tool.php' , array( 'row' => $row ) ); ?>
		
		
		
		<!-- Blog Image -->
			<div class="list_blog_image">
				<?php if( $row->getImage() && $this->getParam( 'blogimage_frontpage') ){ ?>
					<a href="<?php echo EasyBlogRouter::_('index.php?option=com_easyblog&view=entry&id='.$row->id); ?>" title="<?php echo $this->escape( $row->title );?>" class="blog-image">
						<img src="<?php echo $row->getImage()->getSource( 'frontpage' );?>" alt="<?php echo $this->escape( $row->title );?>" />
					</a>
				<?php } ?>
			</div>
		
		

		<div class="blog-header">

			<?php // if( $system->config->get( 'layout_avatar' ) && $this->getParam( 'show_avatar_frontpage' ) ){ ?>
				<!-- @template: Avatar -->
				<?php // echo $this->fetch( 'blog.avatar.php' , array( 'row' => $row ) ); ?>
			<?php // } ?>
			
			
			<div class="list_blog_date">
				<?php echo $this->fetch( 'blog.meta_list.php' , array( 'row' => $row, 'postedText' => JText::_( 'COM_EASYBLOG_POSTED' ) ) ); ?>
				
			</div>
			

			<div class="blog-cap">
			
			
			<?php if( $system->config->get( 'layout_avatar' ) && $this->getParam( 'show_avatar_frontpage' ) ){ ?>
				<!-- @template: Avatar -->
				<div class="list_blog_avt">
					<?php echo $this->fetch( 'blog.avatar_list.php' , array( 'row' => $row ) ); ?>
				</div>
			<?php  } ?>
			
			
				<div class="list_blog_item_infor">

				<!-- Post metadata -->
				<div class="item_infor_1">
					<?php echo $this->fetch( 'blog.meta.php' , array( 'row' => $row, 'postedText' => JText::_( 'COM_EASYBLOG_POSTED' ) ) ); ?>
				</div>
				<div class="item_infor_2">
					<?php if( $this->getParam( 'show_hits' , true ) ){ ?>
						<span class="blog-hit"><?php echo JText::sprintf( 'BT_FASHION_COM_EASYBLOG_HITS_TOTAL' , $row->hits ); ?></span>
					<?php } ?>
					
					<?php echo $this->fetch( 'blog.item.comment.php' , array( 'row' => $row ) ); ?>
					
					<?php if( $system->config->get( 'main_ratings_frontpage' ) ) { ?>
						<!-- Blog ratings -->
						<?php echo $this->fetch( 'blog.rating.php' , array( 'row' => $row , 'locked' => $system->config->get( 'main_ratings_frontpage_locked' ) ) ); ?>
					<?php } ?>
					
					
				</div>
				
				</div>
				<!-- @Trigger onAfterDisplayTitle -->
				<?php echo $row->event->afterDisplayTitle; ?>
			</div>
		<div style="clear:both;"></div>
		</div>

		<!-- Content wrappings -->
		<div class="blog-content">
			<!-- Post title -->
				<h2 id="title-<?php echo $row->id; ?>" class="blog-title<?php echo ($row->isFeatured) ? ' featured' : '';?>" itemprop="name">
					<a href="<?php echo EasyBlogRouter::_('index.php?option=com_easyblog&view=entry&id='.$row->id); ?>" title="<?php echo $this->escape( $row->title );?>" itemprop="url"><?php echo $row->title; ?></a>

					<?php if( $row->isFeatured ) { ?>
						<!-- Show a featured tag if the entry is featured -->
						<sup class="tag-featured"><?php echo Jtext::_('COM_EASYBLOG_FEATURED_FEATURED'); ?></sup>
					<?php } ?>
				</h2>

			<!-- Load social buttons -->
			<?php if( in_array( $system->config->get( 'main_socialbutton_position' ) , array( 'top' , 'left' , 'right' ) ) ){ ?>
				<?php echo EasyBlogHelper::showSocialButton( $row , true ); ?>
			<?php } ?>

			<!-- Post content -->
			<div class="blog-text">

				<!-- @Trigger: onBeforeDisplayContent -->
				<?php echo $row->event->beforeDisplayContent; ?>

				

				<!-- Post content -->
				<?php echo $row->text; ?>

				<!-- @Trigger: onAfterDisplayContent -->
				<?php echo $row->event->afterDisplayContent; ?>

				<!-- Copyright text -->
				<?php if( $system->config->get( 'layout_copyrights' ) && !empty($row->copyrights) ) { ?>
					<?php echo $this->fetch( 'blog.copyright.php' , array( 'row' => $row ) ); ?>
				<?php } ?>

				<!-- Maps -->
				<?php if( $system->config->get( 'main_locations_blog_frontpage' ) ){ ?>
					<?php echo EasyBlogHelper::getHelper( 'Maps' )->getHTML( true ,
																			$row->address,
																			$row->latitude ,
																			$row->longitude ,
																			$system->config->get( 'main_locations_blog_map_width') ,
																			$system->config->get( 'main_locations_blog_map_height' ),
																			JText::sprintf( 'COM_EASYBLOG_LOCATIONS_BLOG_POSTED_FROM' , $row->address ),
																			'post_map_canvas_' . $row->id );?>
				<?php } ?>
			</div>
			
			<?php if( $this->getParam( 'show_last_modified' ) ){ ?>
				<!-- Modified date -->
				<span class="blog-modified-date">
					<?php echo JText::_( 'COM_EASYBLOG_LAST_MODIFIED' ); ?>
					<?php echo JText::_( 'COM_EASYBLOG_ON' ); ?>
					<!--<time datetime="<?php echo $this->formatDate( '%Y-%m-%d' , $row->modified ); ?>">-->
						<span><?php echo $this->formatDate( $system->config->get('layout_dateformat') , $row->modified ); ?></span>
					<!--</time>-->
				</span>
			<?php } ?>

			<?php if( $this->getParam( 'show_tags' ) && $this->getParam( 'show_tags_frontpage' , true ) ){ ?>
				<?php echo $this->fetch( 'tags.item.php' , array( 'tags' => $row->tags ) ); ?>
			<?php } ?>

			
			<!-- Bottom metadata -->
			<div class="blog-meta-bottom">
					<div class="">
						

						<?php if( $row->readmore ) { ?>
							<!-- Readmore link -->
							<?php echo $this->fetch( 'blog.readmore.php' , array( 'row' => $row ) ); ?>
						<?php } ?>
					</div>
			</div>

			<!-- Load bottom social buttons -->
			<?php if( $system->config->get( 'main_socialbutton_position' ) == 'bottom' ){ ?>
				<?php echo EasyBlogHelper::showSocialButton( $row , true ); ?>
			<?php } ?>

			<!-- Standard facebook like button needs to be at the bottom -->
			<?php if( $system->config->get('main_facebook_like') && $system->config->get('main_facebook_like_layout') == 'standard' && $system->config->get( 'integrations_facebook_show_in_listing') ) : ?>
				<?php echo $this->fetch( 'facebook.standard.php' , array( 'facebook' => $row->facebookLike ) ); ?>
			<?php endif; ?>

			<?php if( $system->config->get( 'layout_showcomment' ) && EasyBlogHelper::getHelper( 'Comment')->isBuiltin() ){ ?>
				<!-- Recent comment listings on the frontpage -->
				<?php echo $this->fetch( 'blog.item.comment.list.php' , array( 'row' => $row ) ); ?>
			<?php } ?>
		</div>
	</div>
</div>
