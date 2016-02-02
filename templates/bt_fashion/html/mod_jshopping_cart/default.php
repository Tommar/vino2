<script>
jQuery.noConflict();
$B = jQuery;
$B(document).ready(function () {
	$B('#jshop_module_cart table').addClass('active');
	$B('#jshop_module_cart table').hide();
	$B('#jshop_module_cart .cart-button').click(function (){	
		if($B('#jshop_module_cart table').hasClass('active')){
			$B('#jshop_module_cart table').removeClass('active');
			$B('#jshop_module_cart table').show(300);						
		}else{
		 $B('#jshop_module_cart table').hide(300);			
		 $B('#jshop_module_cart table').addClass('active');
		 }
		}
	)
}
)

</script>
<div id = "jshop_module_cart">
<div class="cart-button"></div>
<table >
<tr>
    <td>
      <span id = "jshop_quantity_products"><?php print $cart->count_product?></span>&nbsp;<?php print JText::_('PRODUCTS')?>
    </td>
    <td>-</td>
    <td>
      <span id = "jshop_summ_product"><?php print formatprice($cart->getSum(0,1))?></span>
    </td>
</tr>
<tr>
    <td colspan="3" align="right" style="vertical-align: middle;">
        <a href = "<?php print SEFLink('index.php?option=com_jshopping&controller=cart&task=view', 1)?>"><?php if($params->get('picture_link')) print '<img src="'.JURI::root().$params->get('picture_link').'" />';?> <?php print JText::_('GO_TO_CART')?></a>
    </td>
</tr>
</table>

</div>