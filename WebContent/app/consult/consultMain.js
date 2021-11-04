/**
 * 상담페이지
 */

$(function() {
			$(window).scroll(
					function() {
						if ($(this).scrollTop() >= Math.ceil($('#start')
								.offset().top)) {
							$(".floating").show();
						} else {
							$(".floating").hide();
						}
					});
		});

		document.getElementById("modern_pac").style.display = 'none';

		function changeType() {
			target = document.getElementsByName("cns_roomType");
			for (var i = 0; i < target.length; i++) {
				if (target[0].checked) {
					document.getElementById("char_pac").style.display = 'block';
					document.getElementById("modern_pac").style.display = 'none';
					$("input:radio[id='disney']").prop("checked", true);
				} else {
					document.getElementById("char_pac").style.display = 'none';
					document.getElementById("modern_pac").style.display = 'block';
					$("input:radio[id='white']").prop("checked", true);
				}

			}
		}

		function formSubmit() {
			var form = document.consultForm;

			if (!form.cns_roomType.value) {
				alert("패키지를 선택해주세요.");
				return;
			}

			if (!form.cns_square.value) {
				alert("평수를 입력해주세요.")
				$("input[name=cns_square]").focus();
				return;
			}

			form.submit();
		}
		
		/*$(document).ready(function(){
	          $(document).bind('keydown',function(e){
	               if (e.keyCode == 32 || 
	            		   e.keyCode == 21 || 
	            		   e.keyCode == 25 ||
	            		   (e.keyCode > 64 && e.keyCode < 91) ||
	            		   e.keyCode == 184 ||
	            		   e.keyCode == 189 ||
	            		   e.keyCode == 192) {
	                    e.preventDefault();
	                    e.returnValue = false;
	               }
	          });
	     });*/
		
	var cns_total_price = document.getElementById('cns_total_price');
	
	var room = document.getElementsByName("cns_roomCnt");
	var total = 0 ;
	$(document).on('keyup', function() {
	var square = document.getElementById('cns_square').value;
		if(square == 0){
			total = "0 ~ 0만원";
			room[0].checked = true;
		}else if(0 < square && square <= 15){
			total = "200 ~ 300만원";
			room[0].checked = true;
		}else if(15 < square && square <= 20){
			total = "250 ~ 375만원";
			room[0].checked = true;
		}else if(20 < square && square <= 25){
			total = "320 ~ 454만원";
			room[0].checked = true;
		}else if(25 < square && square <= 30){
			total = "400 ~ 567만원";
			room[0].checked = true;
		}else if(30 < square && square <= 35){
			total = "515 ~ 662만원";
			room[0].checked = true;
		}else if(35 < square && square <= 40){
			total = "595 ~ 792만원";
			room[0].checked = true;
		}else if(40 < square && square <= 45){
			total = "673 ~ 887만원";
			room[0].checked = true;
		}else if(45 < square && square <= 50){
			total = "778 ~ 958만원";
			room[0].checked = true;
		}else if(50 < square && square <= 55){
			total = "891 ~ 1104만원";
			room[0].checked = true;
		}else if(55 < square && square <= 60){
			total = "995 ~ 1222만원";
			room[0].checked = true;
		}else if(60 < square){
			total = "1102 ~ 1306만원";
			room[0].checked = true;
		}
		
	
		cns_total_price.innerHTML = total;
	});
		
	function roomPrice(){
		if(document.getElementById('cns_square').value != 0){
			if(room[0].checked){
				cns_total_price.innerHTML = total;
			}else if(room[1].checked){
				cns_total_price.innerHTML = total;
			}else if(room[2].checked){
				cns_total_price.innerHTML = total;
			}else if(room[3].checked){
				cns_total_price.innerHTML = total;
			}
		}
	};