/**
 * 
 */
$(document).ready(function() {
	// Buoi sang
		$("#select1").on(
				"change",
				function(e) {
					e.preventDefault();
					var valueSelected = $(this).val();
					for ( var i = 7; i <= valueSelected; i++) {
						$("#select2 option[value=" + i + "]").prop("disabled",true);
						$("#select2 option[value=" + (i+1) + "]").prop("disabled",false);
						$("#select2").val(i + 1);

						$("#select2").prop("disabled", false);
						$(".sang1").attr('disabled', false);
					}
					if (valueSelected == 0) {
						$("#select2").val(0);
						$("#select2").prop("disabled", true);
						$(".sang1").attr('disabled', true);
					}
				});
		$("#select2").on(
				"change",
				function(e) {
					e.preventDefault();
					var valueSelected = $(this).val();
					for ( var i = 8; i <= valueSelected; i++) {
						$("#select3 option[value=" + (i-1) + "]").prop("disabled", true);
						$("#select3 option[value=" + (i) + "]").prop("disabled", false);						
					}
					if (valueSelected == 0) {
						$("#select1").val(0);
						$("#select2").prop("disabled", true);
						$(".sang1").attr('disabled', true);
					}
					if (valueSelected == 10 && $("#select3").val()!=0) {
						$("#select3").val(10);
						$("#select4").val(11);
					}
				});
		$("#select3").on("change", function(e) {
			e.preventDefault();
			var valueSelected = $(this).val();
			for ( var i = 9; i <= valueSelected; i++) {
				$("#select4 option[value=" + i + "]").prop("disabled", true);
				$("#select4 option[value=" + (i+1) + "]").prop("disabled", false);
				$("#select4").val(i + 1);
				
				$("#select4").prop("disabled", false);
				$(".sang2").attr('disabled', false);
			}
			if (valueSelected == 0) {
				$("#select4").val(0);
				$("#select4").prop("disabled", true);
				$(".sang2").attr('disabled', true);
			}
		});
		$("#select4").on("change", function(e) {
			e.preventDefault();
			var valueSelected = $(this).val();
			if (valueSelected == 0) {				
				$("#select3").val(0);
				$("#select4").prop("disabled", true);
				$(".sang2").attr('disabled', true);
			}
		});
		// Buoi Chieu
		$("#select5").on(
				"change",
				function(e) {
					e.preventDefault();
					var valueSelected = $(this).val();
					for ( var i = 13; i <= valueSelected; i++) {
						$("#select6 option[value=" + i + "]").prop("disabled",true);
						$("#select6 option[value=" + (i+1) + "]").prop("disabled",false);
						$("#select6").val(i + 1);
						
						$("#select6").prop("disabled", false);
						$(".chieu1").attr('disabled', false);
					}
					if (valueSelected == 0) {
						$("#select6").val(0);
						$("#select6").prop("disabled", true);
						$(".chieu1").attr('disabled', true);
					}
				});
		$("#select6").on(
				"change",
				function(e) {
					e.preventDefault();
					var valueSelected = $(this).val();
					for ( var i = 14; i <= valueSelected; i++) {
						$("#select7 option[value=" + (i-1) + "]").prop("disabled", true);
						$("#select7 option[value=" + (i) + "]").prop("disabled", false);
					}
					if (valueSelected == 0) {
						$("#select5").val(0);
						$("#select6").prop("disabled", true);
						$(".chieu1").attr('disabled', true);
					}
					if (valueSelected == 16 && $("#select7").val()!=0) {
						$("#select7").val(16);
						$("#select8").val(17);
					}
				});
		$("#select7").on("change", function(e) {
			e.preventDefault();
			var valueSelected = $(this).val();
			for ( var i = 15; i <= valueSelected; i++) {
				$("#select8 option[value=" + (i) + "]").prop("disabled", true);
				$("#select8 option[value=" + (i+1) + "]").prop("disabled", false);
				$("#select8").val(i + 1);
				
				$("#select8").prop("disabled", false);
				$(".chieu2").attr('disabled', false);
			}
			if (valueSelected == 0) {
				$("#select8").val(0);
				$("#select8").prop("disabled", true);
				$(".chieu2").attr('disabled', true);
			}
		});
		$("#select8").on("change", function(e) {
			e.preventDefault();
			var valueSelected = $(this).val();
			for ( var i = 16; i <= valueSelected; i++) {
				$("#select9 option[value=" + (i-1) + "]").prop("disabled", true);
				$("#select9 option[value=" + (i) + "]").prop("disabled", false);
			}
			if (valueSelected == 0) {
				$("#select7").val(0);
				$("#select8").prop("disabled", true);
				$(".chieu2").attr('disabled', true);
			}
			if (valueSelected == 18 && $("#select9").val()!=0) {
				$("#select9").val(18);
				$("#select10").val(19);
			}
		});
		// Buoi toi
		$("#select9").on("change",function(e) {
							e.preventDefault();
							var valueSelected = $(this).val();
							for ( var i = 17; i <= valueSelected; i++) {
								$("#select10 option[value=" + i + "]").prop("disabled", true);
								$("#select10 option[value=" + (i+1) + "]").prop("disabled", false);
								$("#select10").val(i + 1);
								
								$("#select10").prop("disabled", false);
								$(".toi1").attr('disabled', false);
							}
							if (valueSelected == 0) {
								$("#select10").val(0);
								$("#select10").prop("disabled", true);
								$(".toi1").attr('disabled', true);
							}
						});
		$("#select10").on("change",function(e) {
							e.preventDefault();
							var valueSelected = $(this).val();
							for ( var i = 18; i <= valueSelected; i++) {
								$("#select11 option[value=" + (i-1) + "]").prop("disabled", true);
								$("#select11 option[value=" + (i) + "]").prop("disabled", false);
							}
							if (valueSelected == 0) {
								$("#select9").val(0);
								$("#select10").prop("disabled", true);
								$(".toi1").attr('disabled', true);
							}
							if (valueSelected == 20 && $("#select11").val()!=0) {
								$("#select11").val(21);
								$("#select12").val(22);
							}
						});
		$("#select11").on("change",function(e) {
							e.preventDefault();
							var valueSelected = $(this).val();
							for ( var i = 19; i <= valueSelected; i++) {
								$("#select12 option[value=" + (i) + "]").prop("disabled", true);
								$("#select12 option[value=" + (i+1) + "]").prop("disabled", false);
								$("#select12").val(i + 1);
								
								$("#select12").prop("disabled", false);
								$(".toi2").attr('disabled', false);
							}
							if (valueSelected == 0) {
								$("#select12").val(0);
								$("#select12").prop("disabled", true);
								$(".toi2").attr('disabled', true);
							}
						});
		$("#select12").on("change", function(e) {
			e.preventDefault();
			var valueSelected = $(this).val();
			if (valueSelected == 0) {
				$("#select11").val(0);
				$("#select12").prop("disabled", true);
				$(".toi2").attr('disabled', true);
			}
			
		});
	});