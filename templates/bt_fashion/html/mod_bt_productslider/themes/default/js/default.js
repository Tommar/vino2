jQuery.noConflict();
$B = jQuery;
$B(document).ready(function () {

	$B('img.hovereffect').hover(function () {
		$B(this).animate({
			opacity : 0.5
		}, 300)
	}, function () {
		$B(this).animate({
			opacity : 1
		}, 300)
	})
})
$B(document).ready(function () {
	$B(this).find('.bt-row1').hover(function () {
		$B(this).stop().animate({
			top : -50			
		}, 300);		
	}, function () {
		$B(this).stop().animate({
			top : 0		
		}, 300);		
	})
}
)
