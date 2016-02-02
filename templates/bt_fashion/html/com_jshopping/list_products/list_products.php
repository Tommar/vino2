<?php defined('_JEXEC') or die(); ?>
<div class="jshop list_product product-col<?php echo $this->count_product_to_row;?>">
<?php foreach ($this->rows as $k=>$product){?>
<?php if ($k%$this->count_product_to_row==0) print "<div class=\"row-product\">";?>
    <div style="width:<?php print 100/$this->count_product_to_row?>%; " class="block_product">
		<div class="block_product_inner">
			<?php include(dirname(__FILE__)."/".$product->template_block_product);?>
		</div>
    </div>
    <?php if ($k%$this->count_product_to_row==$this->count_product_to_row-1){?>
    </div>               
    <?php }?>
<?php }?>
<div style="clear:both;"></div>
<?php if ($k%$this->count_product_to_row!=$this->count_product_to_row-1) print "</div>";?>
</div>