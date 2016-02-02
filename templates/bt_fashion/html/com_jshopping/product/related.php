<?php defined('_JEXEC') or die(); ?>
<?php $in_row = $this->config->product_count_related_in_row;?>
<?php if (count($this->related_prod)){?>    
    <div class="related_header"><h3><?php print _JSHOP_RELATED_PRODUCTS?></h3></div>
    <div class="jshop_list_product">
    <div class = "jshop list_related">
        <?php foreach($this->related_prod as $k=>$product){?>  
            <?php if ($k%$in_row==0) print "<div>";?>
            <div style="width:<?php print 100/$in_row?>%" class="jshop_related">
                <?php include(dirname(__FILE__)."/../".$this->folder_list_products."/".$product->template_block_product);?>
            </div>
            <?php if ($k%$in_row==$in_row-1) print "<div style='clear:both;'></div></div>";?>   
        <?php }?>
		
        <?php if ($k%$in_row!=$in_row-1) print "<div style='clear:both;'></div></div>";?>
    </div>
    </div> 
<?php }?>