/**
 * 
 */

$('.end').waypoint(function(direction) {
	if (direction === 'down') {
		$('#myModal').modal('show')
	}
}, {
	offset : '100%'
}).waypoint(function(direction) {
	if (direction === 'up') {
		$('#myModal').modal('hide')
	}
});