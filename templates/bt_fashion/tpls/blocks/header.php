<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
$sitename  = $this->params->get('sitename') ? $this->params->get('sitename') : JFactory::getConfig()->get('sitename');
$slogan    = $this->params->get('slogan');
$logotype  = $this->params->get('logotype', 'text');
$logoimage = $logotype == 'image' ? $this->params->get('logoimage', 'templates/' . T3_TEMPLATE . '/images/logo.png') : '';
$logoimgsm = ($logotype == 'image' && $this->params->get('enable_logoimage_sm', 0)) ? $this->params->get('logoimage_sm', '') : false;
?>

<!-- HEADER -->
<header id="t3-header" class="t3-header">
<div class="container">
  

    <!-- LOGO -->
    <div class="logo">
	<!-- MAIN NAVIGATION -->
	<nav id="t3-mainnav" class="wrap t3-mainnav">
	  <div class="navbar">
		<div class="navbar-inner">		  
		  <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">      
		  </button>

		  <div class="nav-collapse collapse<?php echo $this->getParam('navigation_collapse_showsub', 1) ? ' always-show' : '' ?>">
		  <div class="close-menu"></div>
		  <?php if ($this->getParam('navigation_type') == 'megamenu') : ?>		    
			<jdoc:include type="megamenu" />
		  <?php else : ?>
			<jdoc:include type="modules" name="<?php $this->_p('mainnav') ?>" style="raw" />
		  <?php endif ?>
		  </div>
		</div>
	  </div>
	</nav>
	<!-- //MAIN NAVIGATION -->

      <div class="logo-<?php echo $logotype, ($logoimgsm ? ' logo-control' : '') ?>">
        <a href="<?php echo JURI::base(true) ?>" title="<?php echo strip_tags($sitename) ?>">
          <?php if($logotype == 'image'): ?>
            <img class="logo-img" src="<?php echo JURI::base(true) . '/' . $logoimage ?>" alt="<?php echo strip_tags($sitename) ?>" />
          <?php endif ?>
          <?php if($logoimgsm) : ?>
            <img class="logo-img-sm" src="<?php echo JURI::base(true) . '/' . $logoimgsm ?>" alt="<?php echo strip_tags($sitename) ?>" />
          <?php endif ?>          <span><?php echo $sitename ?></span>
        </a>
        <small class="site-slogan hidden-phone"><?php echo $slogan ?></small>
      </div>
    </div>
    <!-- //LOGO -->

    <?php if($this->countModules('head-search or languageswitcherload')): ?>
    <div class="rightbar">  
      <?php if ($this->countModules('head-search')) : ?>
      <!-- HEAD SEARCH -->
      <div class="head-search<?php $this->_c('head-search')?>">     
        <jdoc:include type="modules" name="<?php $this->_p('head-search') ?>" style="raw" />
      </div>
      <!-- //HEAD SEARCH -->
      <?php endif ?>
  
      <?php if ($this->countModules('languageswitcherload')) : ?>
      <!-- LANGUAGE SWITCHER -->
      <div class="languageswitcherload">
          <jdoc:include type="modules" name="<?php $this->_p('languageswitcherload') ?>" style="raw" />
      </div>
      <!-- //LANGUAGE SWITCHER -->
      <?php endif ?>
	  <div style="clear:both;"></div>
    </div>
    <?php endif ?>
	<div style="clear:both;"></div>
  </div>
</header>
<!-- //HEADER -->
