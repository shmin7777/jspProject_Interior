/**
 * 	회원가입
 */


function checkSelectAll()  {
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="term"]');
	  // 선택된 체크박스
	  const checked 
	    = document.querySelectorAll('input[name="term"]:checked');
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="agreeAll"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }

}

function selectAll(selectAll)  {
	  const checkboxes 
	     = document.getElementsByName('term');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
}


$(document).ready(function(){
    $('#email_select').change(function(){
        var email = $('#email_select').val(); //id선택자로 email select box값 추출하여 저장
        if(email == '_manual'){ //selectbox value가 _manual이면
            $("#email_select").replaceWith("<input type = 'text' id='input_email' placeholder='직접입력' style='margin: auto !important;'>");
            //selectbox 태그를 input 태그로 변경
			$("#inputEmail").append("<button id='reset' type='button' onclick='check()'>✖</button>");
        }
    });
});

function check(){
   var i = document.getElementById('inputEmail');
   var j = document.getElementById('input_email');
   j.value=null;
   i.innerHTML = "<select id='email_select' name='email'style='font-size: 10px !important;'>"+
   "<option selected disabled>선택</option>"+
   "<option value='naver.com'>naver.com</option>"+
   "<option value='daum.net'>daum.net</option>"+
   "<option value='gmail.com'>gmail.com</option>"+
   "<option value='nate.com'>nate.com</option>"+
   "<option value='hotmail.com'>hotmail.com</option>"+
   "<option value='icloud.com'>icloud.com</option>"+
   "<option value='outlook.com'>outlook.com</option>"+
   "<option value='_manual'>직접입력</option></select>";
};



var check = false;

function formSubmit(){
	var form = document.signupForm;
	
	if(!form.user_name.value){
		alert("이름을 확인해주세요");
		form.user_name.focus();
		return;
	}
	
   if(form.user_id.value.length < 4 || form.user_id.value.length > 16){
      alert("아이디는 4자 이상, 16자 이하로 입력해주세요.");
      form.user_id.focus();
      return false;
   }else{
		check = true;
	}
	
	if(!form.user_id.value || !check){
		alert("아이디를 확인해주세요");
		form.user_id.focus();
		return;
	}

	if(!form.user_email.value){
		alert("이메일을 입력해주세요");
		form.user_email.focus();
		return;
	}
	
	if(!form.user_phone_no.value){
		alert("휴대폰번호를 입력해주세요");
		form.user_phone_no.focus();
		return;
	}
	
	if(!form.user_pw.value){
		alert("비밀번호를 입력해주세요");
		form.user_pw.focus();
		return;
	}else{
 	 //8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
      var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
      var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
  
      if(!reg.test(form.user_pw.value)){
         alert("비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.");
         form.user_pw.focus();
         return;
      }
		 //비밀번호에 공백을 포함할 수 없다.
	  if(form.user_pw.value.search(/\s/) != -1){
	     alert("비밀번호에 공백 없이 입력해주세요.");
	     form.user_pw.focus();
	     return;
	  }

		if(form.user_pw.value != form.user_pw_check.value){
			alert("비밀번호가 일치하지 않습니다.");
			form.user_pw.focus();
			return;	
		}
	}
	
	
	check = false;

	$.each($(".terms"), function(index, item){
		if(!$(item).is(":checked")){
			check = true;
		}
	});
	
	if(check){
		alert("이용약관 동의가 필요합니다.");
		form.term.fous();
		return;
	}
	
	form.submit();
}



function checkId(id){
	check = false;
	
	if(id == ""){
		$("#idCheck_text").text("");
		return;
	}
	
	$.ajax({
		url:contextPath+"/user/UserCheckIdOk.me?user_id=" + id,
		type:"get",
		dataType:"json",
		success:function(result){
			if(result.status == "ok"){
				//DOM
				$("#idCheck_text").text("사용 가능");
				$("#idCheck_text").css("color", "blue");
				check = true;
			}else{
				//DOM
				$("#idCheck_text").text("사용 불가");
				$("#idCheck_text").css("color", "red");
			}
		},
		error:function(){
			console.log("오류");
		}
	});
	
}
$("input[name='user_id']").keyup(function(){
	//중복 검사
	console.log(1);
	checkId($(this).val());
})























