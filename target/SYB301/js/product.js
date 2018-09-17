$('.dltProduct').click(function() {
	var id = $(this).data('id');
	$('#form-delete').attr('action', 'deleteProduct.action?id=' + id);
});

$.extend( true, $.fn.dataTable.defaults, {
    "searching": false,
    "ordering": false
} );

$(document).ready(function() {
	$('#modalNotice').modal('show');
	
	$('#modalSuccess').modal('show');
	
	$('#productTable').DataTable( {
		"lengthMenu": [[4, 10, 20, -1], [4, 10, 20, "All"]]
    } );
});