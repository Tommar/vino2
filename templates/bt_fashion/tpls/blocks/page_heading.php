<?php 

$app = JFactory::getApplication();
$doc = JFactory::getDocument();
$this->language = $doc->language;
$this->direction = $doc->direction;
$menu = $app->getMenu();
$lang = JFactory::getLanguage();
?>
<?php if (($menu->getActive() != $menu->getDefault($lang->getTag()))) : ?>  
     <div class="page-heading">
     <div class="container">
        <div class="page-heading-inner">
			<div class="page-heading-title">
				<?php
					$active_menu = JFactory::getApplication()->getMenu()->getActive();
					if ($active_menu != '') :
						echo $active_menu->title;
				?>	
				<?php else : ?>
					<?php echo $doc->getTitle(); ?>
				<?php endif; ?>
			</div><!-- page-heading-title -->
			<div style="clear:both"></div> 

			<?php if ($this->countModules('pathway')) : ?>
				<div id="kpathway" class="kpathway">
					<jdoc:include type="modules" name="pathway" style="raw" />
				</div>    
				<div style="clear:both"></div> 
			<?php endif; ?>
					   
        </div>
        </div>
		</div>
<?php endif; ?> 




























