<?php
  foreach($categories_arr as $curr){
      $class = "jshop_menu_level_".$curr->level;
      if ($categories_id[$curr->level]==$curr->category_id) $class = $class."_a";      
      ?>
	  <div class="cat-item"><div class="jshop_categ">
      <div class = "category <?php print $class?>">			           
			<div class="bg-shadow-img"></div>
                <?php if ($show_image && $curr->category_image){?>
                    <img class="jshop_img" align = "absmiddle" src = "<?php print $jshopConfig->image_category_live_path."/".$curr->category_image?>" alt = "<?php print $curr->name?>" />
                <?php } ?>
            </a>
			<div class="jshop-box-caption">			
				<a class="product_link" href = "<?php print $curr->category_link?>"><?php print $curr->name?></a>			
			</div>
      </div>
	  </div></div>
  <?php
  }
?>