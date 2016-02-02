<?php defined('_JEXEC') or die(); ?>
<?php if ($this->allow_review || $this->config->show_hits){?>

    <?php if ($this->config->show_hits){?>
    <?php print _JSHOP_HITS?>: 
    <?php print $this->product->hits;?>
    <?php } ?>
    
    <?php if ($this->allow_review && $this->config->show_hits){?>
    | 
    <?php } ?>
	<div class="rating-product">
		<?php if ($this->allow_review){?>
		<span><?php print _JSHOP_RATING?>: </span>
		
		<?php print showMarkStar($this->product->average_rating);?>                    
		
		<?php } ?>
	</div>
<?php } ?>