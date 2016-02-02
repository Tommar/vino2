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

// $extraClass     = 'blog-meta';

// Altium
// If view is entry, use 'fsm'
// If view is latest or other, use mbm
// if type is micro use micro , else twitter or email

// Default
// If view is not entry use 'mbm'
// If view is not entry and microtype use class 'micro'
// If twitter use 'twitter'
?>
		<?php if( $this->getParam( 'show_created_date' ) ){ ?>
			<!-- Creation date -->
			<div class="date_month"><?php echo $this->formatDate('M' , $row->{$this->getParam( 'creation_source')} ); ?></div>
			<div class="date_year"><?php echo $this->formatDate('Y' , $row->{$this->getParam( 'creation_source')} ); ?></div>
		<?php } ?>
