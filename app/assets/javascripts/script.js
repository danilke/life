$(document).ready(function() {
	$('#search-field').focus(function() {
		$(this).attr('value', ' ');
	});
	$('#search-field').blur( function() {
		$(this).attr('value', 'Search');
	});
});