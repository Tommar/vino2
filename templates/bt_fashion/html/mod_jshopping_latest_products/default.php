<div class="latest_products">
<form name="product" method="post" action="<?php print $curr->action?>" enctype="multipart/form-data" autocomplete="off">
<?php foreach($last_prod as $curr){ ?>
   <div class="block_item"><div class="block_item-inner">
       <?php if ($show_image) { ?>
	   <?php if ($curr->label_id){?>
			<div class="product_label">
				<?php if ($curr->_label_image){?>
					<img src="<?php print $curr->_label_image?>" alt="<?php print htmlspecialchars($curr->_label_name)?>" />
				<?php }else{?>
					<span class="label_name"><?php print $curr->_label_name;?></span>
				<?php }?>
			</div>
		<?php }?>
       <div class="item_image">
           <a href="<?php print $curr->product_link?>"><img src = "<?php print $jshopConfig->image_product_live_path?>/<?php if ($curr->product_thumb_image) print $curr->product_thumb_image; else print $noimage?>" alt="" /></a>
       </div>
       <?php } ?>
       <div class="item_name">
           <a href="<?php print $curr->product_link?>"><?php print $curr->name?></a>
       </div>
       <?php if ($curr->_display_price){?>
       <div class="item_price">
           <?php print formatprice($curr->product_price);?>
       </div>
       <?php }?>
	    <p class="rating-product">				
			<?php print showMarkStar($curr->product->average_rating);?>                    		
		</p>
		 <div class="buttons">            
                <input type="submit" class="button cart" value="<?php print _JSHOP_ADD_TO_CART?>" onclick="jQuery('#to').val('cart');" />               
                    <input type="submit" class="button" value="<?php print _JSHOP_ADD_TO_WISHLIST?>" onclick="jQuery('#to').val('wishlist');" />              
                <?php print $curr->_tmp_product_html_buttons;?>
            </div>
   </div></div>         
<?php } ?>
<input type="hidden" name="to" id='to' value="cart" />
<input type="hidden" name="product_id" id="product_id" value="<?php print $curr->product->product_id?>" />
<input type="hidden" name="category_id" id="category_id" value="<?php print $curr->category_id?>" />
</form>
</div>