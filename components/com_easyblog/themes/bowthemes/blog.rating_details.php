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
<!-- Blog ratings -->
<li class="blog-rating">
	<?php echo EasyBlogHelper::getHelper( 'ratings' )->getHTML( $row->id , EBLOG_RATINGS_TYPE_ENTRY , JText::_( 'COM_EASYBLOG_RATINGS_RATE_BLOG_ENTRY') , 'blog-' . $row->id . '-ratings' , isset( $locked ) ? $locked : false ); ?>
</li>