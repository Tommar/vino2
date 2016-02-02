<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<!-- META FOR IOS & HANDHELD -->
<?php if($this->getParam('responsive', 1)): ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<?php endif ?>
<meta name="HandheldFriendly" content="true" />
<meta name="apple-mobile-web-app-capable" content="YES" />
<!-- //META FOR IOS & HANDHELD -->

<?php 
// SYSTEM CSS
$this->addStyleSheet(JURI::base(true).'/templates/system/css/system.css'); 
?>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700,200' rel='stylesheet' type='text/css'>
<link href="<?php echo T3_TEMPLATE_URL ?>/css/bt_style.css" rel="stylesheet" />
<?php 
// T3 BASE HEAD
$this->addHead(); ?>

<?php 
// CUSTOM CSS
if(is_file(T3_TEMPLATE_PATH . '/css/custom.css')) { ?>
	<link href="<?php echo T3_TEMPLATE_URL ?>/css/custom.css" rel="stylesheet" />
<?php } ?>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- For IE6-8 support of media query -->
<!--[if lt IE 9]>
<script type="text/javascript" src="<?php echo T3_URL ?>/js/respond.min.js"></script>
<![endif]-->

<!-- You can add Google Analytics here-->
<script>
jQuery.noConflict();
$B = jQuery;
$B(document).ready(function () {
	$B('.t3-mainnav .close-menu').click(function (e){
		//$B('.nav-collapse').height(100);
		
		var $btn = $B('.btn-navbar[data-toggle="collapse"]');
		$B('html').removeClass ('off-canvas-enabled');
		$btn.data('off-canvas', 'hide');
		setTimeout (function(){
			$B('html').removeClass ('off-canvas');
		}, 600);
		
	})
	
	$B('#off-canvas-nav .t3-mainnav').height($B( window ).height());
	$B( window ).resize(function() {
		$B('#off-canvas-nav .t3-mainnav').height($B( window ).height());
	});	
})

</script>