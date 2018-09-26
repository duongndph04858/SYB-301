//Delete category
$('.dltCategory').click(function() {
	var id = $(this).data('id');
	$('#form-delete').attr('action', 'deleteCategory.action?id=' + id);
});

// update category
$('.editCategory').click(function() {
	var id = $(this).data('id');
	$("#category-name").val($(this).data('name'));
	$('#form-update').attr('action', 'updateCategory.action?id=' + id);
});

$(document).ready(function() {
	$('#form-update').validate({
		onfocusout : false,
		onkeyup : false,
		onclick : false,
		rules : {
			"categoryName" : {
				required : true,
			}
		},
		messages : {
			"categoryName" : {
				required : "Vui lòng nhập tên danh mục!",
			}
		}
	});

});
