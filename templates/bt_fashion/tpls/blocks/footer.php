<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<!-- FOOTER -->
<footer id="t3-footer" class="wrap t3-footer">
  <div class="t3-footer-inner container">
	  <!-- FOOT NAVIGATION -->	 
		<?php $this->spotlight ('footnav', 'footer-1, footer-2, footer-3, footer-4, footer-5, footer-6') ?>	 
	  <!-- //FOOT NAVIGATION -->
	  <div class="t3-footnav">
		<jdoc:include type="modules" name="<?php $this->_p('footer-menu') ?>" />
	  </div>
	  <section class="t3-copyright">
			<div class="<?php echo $this->getParam('t3-rmvlogo', 1) ? '' : '' ?> copyright<?php $this->_c('footer')?>">
			  <jdoc:include type="modules" name="<?php $this->_p('footer') ?>" />
			</div>
			<?php if($this->getParam('t3-rmvlogo', 1)): ?>
			<div class="poweredby">
			  <a class="t3-logo t3-logo-light" href="http://t3-framework.org" title="<?php echo JText::_('T3_POWER_BY_TEXT') ?>" target="_blank" <?php echo method_exists('T3', 'isHome') && T3::isHome() ? '' : 'rel="nofollow"' ?>><?php echo JText::_('T3_POWER_BY_HTML') ?></a>
			</div>
			<?php endif; ?>
	  </section>
	  <div class="clr"></div>
	  <div class="t3-footer-bottom">
		<jdoc:include type="modules" name="<?php $this->_p('footer-bottom') ?>" />
	  </div>
  </div>
</footer>
<!-- //FOOTER -->