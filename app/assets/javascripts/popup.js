jQuery(document).ready(function($) {
	jQuery('#pop a').live('click', function(){
		newwindow=window.open($(this).attr('href'),'','width=400, height=400, top=0, left=200');
		if (window.focus) {newwindow.focus()}
		return false;
	});
});