<?php
/**
 * @package 	mod_bt_productslider - BT Product Slider Module
 * @version		1.0
 * @created		June 2012
 * @author		BowThemes
 * @email		support@bowthems.com
 * @website		http://bowthemes.com
 * @support		Forum - http://bowthemes.com/forum/
 * @copyright	Copyright (C) 2012 Bowthemes. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 *
 */

// no direct access
defined('_JEXEC') or die('Restricted access');
$document = JFactory::getDocument();
// ROW * COL
$itemsPerRow = (int)$params->get( 'items_per_rows', 3 );
$itemsPerCol = (int)$params->get( 'items_per_cols', 1 );

//effect 
$effect = $params->get('slide_effect', 'scroll');

//Num of item display
//$maxPages = $itemsPerRow*$itemsPerCol;
$itemPerLi = $itemsPerCol;
$itemVisible = $itemsPerRow;

//Get pages list array
$pages = array_chunk( $list, $itemPerLi  );

//Get total pages
$totalLiTags = count($pages);
$totalPages = (($itemsPerCol * $itemsPerRow) % $params->get('limit_items', 12) != 0) ? (($itemsPerCol * $itemsPerRow) / $params->get('limit_items', 12) + 1) : (($itemsPerCol * $itemsPerRow) / $params->get('limit_items', 12));
// calculate width of each row.

$itemWidth = 100;
$liWidth = $moduleWidth == 'auto' ? $params->get('item_min_width',300) : number_format(100/$itemsPerRow,2);

$itemHeight = $params->get('item_height', 'auto');
if($itemHeight == 'auto'){
	$liHeight = 'auto';
}else{
	$liHeight = (($itemHeight + 20) * $itemsPerCol) . 'px';
}

$nextBackPosition = $params->get('next_back_position');
$navigationType = $params->get('navigation_type');
$navigationPosition = $params->get('navigation_position');
$slide_item_per_time = $params->get('slide_item_per_time', 1);
?>
<?php if(count($list)>0) :?>
<div class="shoppingLayout" style="width:<?php echo $moduleWidthWrapper;?>; ">
	<div id="btproductslider<?php echo $module->id; ?>"  class="bt-productslider<?php echo $moduleclass_sfx ? ' bt-productslider'.$params->get('moduleclass_sfx'):'';?>">
		<h3>
		<?php if($params->get('content_title_link')) {?>
			<a href="<?php echo $params->get('content_title_link');?>"><span><?php echo $params->get('content_title') ?> </span></a>
		<?php } else { 
			echo $params->get('content_title'); 
		}
		?>                            
		</h3>
		<div  style="width:<?php echo $moduleWidth.";"?>">
			<?php if( $totalPages > 1 && $nextBackPosition == 'flanks'){?>
			<div class="btproductslider-prev"></div>
			<div class="btproductslider-next"></div>
			<?php } 
			//if both of navigation and button are showed and their position is top
			if(($nextBackPosition == 'top') || ($navigationPosition == 'top')){   
			?>
			<div id="btproductslider-control">
				<?php if($nextBackPosition == 'top'){?>
				<div class="btproductslider-next"></div>
				<?php
				}
				if($navigationPosition == 'top'){ ?>
				<div class="btproductslider-navigation"></div>
				<?php
				}
				if($nextBackPosition == 'top'){ ?>
				<div class="btproductslider-prev"></div>
				<?php } ?>
				<div style="clear: both;"></div>
			</div>
			<?php 
			}
			?>
		<ul id="btproductslider<?php echo $module->id; ?>_jcarousel" class="jcarousel jcarousel-skin-tango">
			<?php foreach( $pages as $key => $list ): ?>
			<li>
			<?php foreach( $list as $i => $row ): ?>
				<div class="bt-row" style="width: <?php echo $itemWidth?>%;">
					<?php if($params->get('show_label', 1)) : ?>
					<div class="bt-product-label">
						<?php if($source == 'js_categories' || $source == 'js_ids'):?>
							<?php if($row->label_image) : ?>
							<img alt="<?php echo $row->name ?>" src="<?php echo $row->label_image ?>" />
							<?php endif;?>
						<?php else:?>
							<?php if($row->product_special) {?>
							<img alt="<?php echo $row->name ?>" src="<?php echo JURI::root() . 'modules/mod_bt_productslider/tmpl/themes/shopping/images/hot.png' ?>" />
							<?php } else if ($row->old_price && $row->sales_price < $row->old_price){?>
							<img alt="<?php echo $row->name ?>" src="<?php echo JURI::root() . 'modules/mod_bt_productslider/tmpl/themes/shopping/images/sale.png' ?>" />
							<?php } ?>
						<?php endif;?>
					</div>
					<?php endif; ?>
				
					
					<div class="bt-inner">
						<?php if($row->thumbnail){?>
						<div style="<?php echo ($align_image == 'center') ? 'text-align:center' : 'float: ' . $align_image ;?>">
							<a target="<?php echo $openTarget; ?>"
								class="bt-image-link"
								title="<?php echo $row->name;?>" href="<?php echo $row->link;?>">
								<img <?php echo $imgClass ?> src="<?php echo $row->thumbnail; ?>" alt="<?php echo $row->name?>"  title="<?php echo $row->name?>" />
							</a>
						</div>
						<?php } ?>
						<?php if( $show_category_name ): ?>
						<div class="bt-category-container">
							<?php if($show_category_name_as_link && $row->category_link) : ?>
							<a class="bt-category" target="<?php echo $openTarget; ?>"
								title="<?php echo $row->category_name; ?>"
								href="<?php echo $row->category_link?>"> <?php echo $row->category_name; ?>
							</a>
							<?php else :?>
							<span class="bt-category"> <?php echo $row->category_name; ?> </span>
							<?php endif; ?>
						</div>
						<?php endif; ?>

						<?php if( $showTitle ): ?>
						<a class="bt-title" target="<?php echo $openTarget; ?>"
								title="<?php echo $row->name; ?>"
								href="<?php echo $row->link;?>"> <?php echo $row->name; ?> </a>
						<?php endif; ?>
						
						<span class="bt-author"><?php 	echo JText::sprintf('BT_CREATEDBY' , '<a href="' . $row->manufacturer_link . '">' . $row->manufacturer_name . '</a>')?></span>
						<div class="bt-extra">
							<?php if($showRating) { echo $row->ratingSpan; }?>
							<?php if( $showDate && $row->date): ?>
							<span class="bt-date"><?php echo JText::sprintf('BT_CREATEDON', $row->date); ?></span> <?php echo ($showManufacturer || $showReviewCount) ? '|' : '' ?>
							<?php endif; ?>
							<?php if( $showManufacturer ): ?>
							<span class="bt-author"><?php 	echo JText::sprintf('BT_CREATEDBY' , $row->manufacturer_name)?></span> <?php echo ($showReviewCount) ? '|' : '' ?>
							<?php endif; ?>
							<?php if($showReviewCount) : ?>
							<span class="bt-review-count"><?php echo JText::sprintf('BT_REVIEW_COUNT', $row->review_count ? $row->review_count : 0); ?></span>
							<?php endif; ?>
						</div>
						
						<?php if( $show_intro ): ?>
						<div class="bt-introtext">
						<?php echo $row->description; ?>
						</div>
						<?php endif; ?>	
						
						<?php if($showPrice || $showViewDetails || $showAddToCart) : ?>
						<div class="bt-row-bottom">
							<?php if($showAddToCart && $row->add_to_cart):?>
							<?php  echo $row->add_to_cart;?> 
							<?php endif;?>
							<?php if($showViewDetails && $row->link):?>
								<a class="bt-viewdetails" target="<?php echo $openTarget; ?>"
										title="<?php echo sprintf(JText::_('VIEW_DETAILS_OF'), $row->name);?>"
										href="<?php echo $row->link;?>">
								</a>
							<?php endif;?>
							<?php if($showPrice):?>
							<div class="bt-prices <?php echo !$row->old_price ? 'no-old' : '' ?> ">
								<?php if($row->old_price && $row->sales_price != $row->old_price ):?>
								<span class="bt-prices-oldPrice"><?php echo  $row->old_price ?></span>
								<?php endif;?>
								<?php if($row->sales_price):?>
								<span class="bt-prices-salesPrice"><?php echo  $row->sales_price ?></span>
								<?php endif;?>
							</div>    
							<?php endif;?>
						</div>
						<?php endif;?>
					</div>
					<!-- bt-inner -->
				</div>
				<!-- bt-row -->
				<?php
					if(($i+1) % $itemsPerCol == 0 || $i == count($list)-1){	
                        echo '</li>';
					}
				?>
				<?php endforeach; ?>
            <?php endforeach; ?>
        </ul>
        <?php
			//if both of navigation and button are showed and their position is top
			if($totalPages > 1 && (($nextBackPosition == 'bottom') || ($navigationPosition == 'bottom'))){
			?>
			<div id="btproductslider-control">
				<?php if($nextBackPosition == 'bottom'){?>
				<div class="btproductslider-next"></div>
				<?php
				}
				if($navigationPosition == 'bottom'){ ?>
				<div class="btproductslider-navigation"></div>
				<?php
				}
				if($nextBackPosition == 'bottom'){ ?>
				<div class="btproductslider-prev"></div>
				<?php } ?>
				<div style="clear: both;"></div>
			</div>
			<?php 
			}
			?>
		</div>
	</div>
	<!-- bt-container -->
</div>
<?php else : ?>
<div>No result...</div>
<?php endif; ?>
<div style="clear: both;"></div>
<?php if( $totalLiTags  > 1 ): ?>
    <script type="text/javascript">
        $B(document).ready(function(){
            var moduleID = '#btproductslider<?php echo $module->id; ?>';    
			
            //init jcarousel
            $B(moduleID + ' .jcarousel').jcarousel({
                initCallback: function(carousel, state){
					
                    <?php if($moduleWidth == 'auto') {?>
					var timeout;
                    $B(window).resize(function(){
						var minWidth = <?php echo $liWidth ?>;
						var minOutterWidth = 	minWidth 
												+ parseInt($B(moduleID + ' .jcarousel-item').css('margin-left')) 
												+ parseInt($B(moduleID + ' .jcarousel-item').css('margin-right')); 
						var numberItem = $B(moduleID + ' .jcarousel-item').length;
						var width = $B(moduleID + ' .jcarousel-container').parent().innerWidth();	
						$B(moduleID + ' .jcarousel-container, ' + moduleID + ' .jcarousel-clip').width(width);
						var availableItem = Math.floor( width / minOutterWidth);
						if(availableItem == 0) availableItem = 1;
						var delta = 0;
						var newWidth = 0;
						if(width > minOutterWidth){
							if(availableItem > numberItem){
								delta = Math.floor((width - minOutterWidth * numberItem) / numberItem);
							}else {
								delta = Math.floor(width % minOutterWidth / availableItem);
							}
							newWidth = minWidth + delta;
						}else{
							newWidth = width;
						}	
						carousel.options.visible = availableItem;
						if($B.browser.webkit){
							$B(moduleID + ' .jcarousel-item').width(newWidth);
							$B(moduleID + ' .jcarousel-list').width(carousel.options.size * $B(moduleID + ' .jcarousel-item').outerWidth(true)); 
						}else{
							carousel.funcResize();
						}
						btPS_RenderNavigation(carousel, moduleID);
						
						<?php if($liHeight == 'auto') {?>
						clearTimeout(timeout);
						timeout = setTimeout(function() {
							var maxHeight = 0;
							$B(moduleID + ' .jcarousel-item  .bt-introtext').each(function(){
							if($B(this).height() > maxHeight){
								maxHeight = $B(this).height();
							}
							$B(moduleID + ' .jcarousel-item .bt-introtext').height(maxHeight);
						});
						
						}, 300);
						
						<?php } ?>
						
					});	
					$B(window).resize();
                      
					<?php }else{ ?>
					//if module's width is
					$B(moduleID + ' .jcarousel li').width(<?php echo $liWidth ?> * $B(moduleID + ' .jcarousel-clip').width() /100 - 10)     ; 
					btPS_RenderNavigation(carousel, moduleID);
					<?php }?>
                        
                    <?php 
                    //hook next and prev
                    if($nextBackPosition){?>    
                    var prev = moduleID + ' .btproductslider-prev';
                    var next = moduleID + ' .btproductslider-next';

                    

                    $B(prev).unbind('click').click(function(){
                        carousel.prev();
                        
                        carousel.stopAuto();
                        carousel.options.auto = 10000;
                        return false;
                    });

                    $B(next).unbind('click').click(function(){
                        carousel.next(); 
                       
                        carousel.stopAuto();
                        carousel.options.auto = 10000;
                        return false;
                    });
                    <?php }?>
                    <?php 
                    //if turn on pause_hover
                    if($params->get('pause_hover')){ ?>
                    btContentShowcaseHoverCallback(carousel, state);
                    <?php } ?>
                },

                
                itemLoadCallback:{
				
                    <?php if($effect == 'fade'){ ?>
                    onBeforeAnimation : function(carousel, state){
                        if(state != 'init'){
                            var containerID = carousel.clip.context.id;
                            $B('#' + containerID).fadeOut(500);
                        }
                    },
                    <?php }?>
                    onAfterAnimation : function(carousel, state){
                        
						
                        <?php if($effect == 'fade'){ ?>
                        if(state != 'init'){
                            var containerID = carousel.clip.context.id;
                            $B('#' + containerID).fadeIn(500);
                        }
                        <?php }?>
                        <?php if($navigationPosition) {?>
                            
                            var size = carousel.options.size;
                            var index = carousel.first;

                            
                            $B(moduleID + ' .btproductslider-navigation a').removeClass('current');
                            if($B(moduleID + ' .btproductslider-navigation a.<?php echo $navigationType?>-' + index).length == 0){
                                var last = carousel.last; //alert(last);
                                while (last > size){
                                    last -=size;
                                }
                                if( last == size){
                                    $B(moduleID + ' .btproductslider-navigation a').last().addClass('current');
                                }else{
                                    
                                    
                                    var lastNavigation;
                                    do {
                                        last--;
                                        lastNavigation = $B(moduleID + ' .btproductslider-navigation a.<?php echo $navigationType?>-' + last);
                                        if(last <=0) break;
                                    } while(lastNavigation.length == 0);
                                    
                                    lastNavigation.addClass('current');
                                }
                            }else{
                                $B(moduleID + ' .btproductslider-navigation a.<?php echo $navigationType?>-' + index).addClass('current');
                            }
                        <?php }?>    
                    }
                },
                
                start: 1,
				<?php if($moduleWidth != 'auto') {?>
				visible: <?php echo $itemVisible ?>,
				<?php } ?>
                auto: <?php echo ($params->get('auto_start')) ? $params->get('interval', 5000) : '0' ?>,
                animation: <?php echo (int)$params->get('duration', '1000')?>,
                
                    buttonNextHTML: null,
                    buttonPrevHTML: null,
                
                scroll : <?php echo $params->get('slide_item_per_time', 1);?>,
                wrap : 'both',
                rtl: <?php echo $params->get('rtl') ? 'true' : 'false'?>
            });
			
			
        });
        <?php if($params->get('pause_hover')){ ?>
        function btContentShowcaseHoverCallback(carousel, state){
            carousel.clip.hover(function() {
                carousel.stopAuto();
            }, function() {
                carousel.startAuto();
            });
        }
        <?php } ?>
		//render navigation
		function btPS_RenderNavigation(carousel, moduleID){
			<?php if($navigationPosition){?>
			if($B(moduleID + ' .btproductslider-navigation').html() != ''){
				$B(moduleID + ' .btproductslider-navigation').html('');
			}		
			var i = 1;
			var step = <?php echo $slide_item_per_time ?>;
			var size = $B(moduleID + ' .jcarousel li').length;
			if(step >=  size){
				$B(moduleID + ' .btproductslider-navigation').append('<a href="#" class="<?php echo $navigationType?> <?php echo $navigationType?>-' + (1) + '" rel="' + (1) + '">' + (1) + '</a>');
				$B(moduleID + ' .btproductslider-navigation').append('<a href="#" class="<?php echo $navigationType?> <?php echo $navigationType?>-' + (size) + '" rel="' + (size) + '">' + (2) + '</a>');
			}else{
				$B(moduleID + ' .jcarousel li').each(function(){
					if((($B(this).index()) % step == 0)){
						$B(moduleID + ' .btproductslider-navigation').append('<a href="#" class="<?php echo $navigationType?> <?php echo $navigationType?>-' + ($B(this).index() + 1) + '" rel="' + ($B(this).index() + 1) + '">' + (i++) + '</a>');
						if($B(this).index() + 1 + carousel.options.visible > size) return false;
						if($B(this).index() + 1 + carousel.options.visible <= size && $B(this).index() + 1 + step > size){
							$B(moduleID + ' .btproductslider-navigation').append('<a href="#" class="<?php echo $navigationType?> <?php echo $navigationType?>-' + (size) + '" rel="' + (size) + '">' + (i) + '</a>');
						}
					}
				});
			}
			
			$B(moduleID + ' .btproductslider-navigation a').eq(0).addClass('current');
			$B(moduleID + ' .btproductslider-navigation').append('<div style="clear: both;"></div>');
			
			//hook navigation
			$B('.btproductslider-navigation a').bind('click', function() {
				if($B(this).hasClass('current')) return false;
				carousel.stopAuto();
				carousel.options.auto = 10000;
				$B(this).parent().find('.current').removeClass('current');
				$B(this).addClass('current');
				carousel.scroll($B.jcarousel.intval($B(this).attr('rel')));
				return false;
			});
			<?php } ?>
			return false;
		}
    </script>
    <?php 
    //declare css for the module
    $moduleCssId = '#btproductslider'. $module->id;
    $css = $moduleCssId.' .jcarousel li{height: '. $liHeight .';} ';
    

  
    if ($nextBackPosition == 'flanks'){
        $css.=  $moduleCssId.' .btproductslider-prev{ position: absolute; left: -21px; top: 48%;} ';
        $css.=  $moduleCssId.' .btproductslider-next{ position: absolute; right: -21px; top: 48%;} ';
    }
    
    if($itemHeight != 'auto')
        $css.= $moduleCssId. ' .bt-inner{ height: '. $itemHeight .'px;} ';
    
    if($align_image != 'center')
        $css.= $moduleCssId. ' .bt-inner .bt-title, '. $moduleCssId . ' .bt-inner .bt-title-nointro, '. $moduleCssId . ' .bt-inner .bt-category, '. $moduleCssId . ' .bt-inner .bt-introtext, ' . $moduleCssId . ' .bt-inner .bt-extra{ margin-' . $align_image . ': '. ($thumbWidth + 10) .'px;} ';
    
    $document->addStyleDeclaration($css);
    ?>
<?php else: ?>
<script type="text/javascript">	
	(function(){
		$B('#btproductslider<?php echo $module->id; ?>').fadeIn("fast");
	})();
</script>
<?php endif; ?>