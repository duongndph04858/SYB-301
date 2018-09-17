$().ready(function() {
	$("#form-insert").validate({
		onfocusout : false,
		onkeyup : false,
		onclick : false,
		rules : {
			"order.address" : {
				required : true,
			},
			"order.phone" : {
				required : true,
				number : true,
				minlength : 10,
				maxlength : 11
			},
			"orderDetail.amount" : {
				required : true,
				digits : true,
				number : true,
				min : 1,
				max : 2147483647
			},
			"order.transport_fee" : {
				required : true,
				digits : true,
				number : true,
				min : 0
			},
			"productId" : {
				min : 1,
			}
		},
		messages : {
			"order.address" : {
				required : "Vui lòng nhập địa chỉ!",
			},
			"order.phone" : {
				required : "Vui lòng nhập số điện thoại!",
				number : "Vui lòng nhập số điện thoại là số!",
				minlength : "Vui lòng nhập số điện thoại đúng định dạng!",
				maxlength : "Vui lòng nhập số điện thoại đúng định dạng!"
			},
			"orderDetail.amount" : {
				required : "Vui lòng nhập số lượng!",
				number : "Vui lòng nhập số lượng là số!",
				digits : "vui lòng nhập số lượng là số nguyên dương!",
				min : "Vui lòng nhập số lượng lớn hơn hoặc bằng 1!",
				max : "Số lượng quá lớn!"
			},
			"order.transport_fee" : {
				required : "Vui lòng nhập phí vận chuyển!",
				number : "Vui lòng nhập phí vận chuyển là số!",
				digits : "vui lòng nhập phí vận chuyển là số dương!",
				min : "Vui lòng nhập phí vận chuyển lớn hơn hoặc bằng 0!"
			},
			"productId" : {
				min : "Vui lòng chọn một sản phẩm!"
			}
		}
	});
});
