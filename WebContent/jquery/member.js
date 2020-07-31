var exp =/^ [0-9]{3}-[0-9]{4}-[0-9]{4} $/;

$(document).ready(function() {
	$("#send").click(function() {
		if($("#name").val()==""){
			alert("이름을입력하세요");
		$("#name").focus();
		return false;
		}
		//아이디 
		if($("#id").val()==""){
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}
		//비밀번호
		if($("#pwl").val()==""){
			alert("비밀번호를 입력하세요");
			return false;
		}
		//비밀번호확인
		if($("#pwd").val()!=$("#pwd_check").val()){
			alert("비밀번호가 일지 하지 않습니다");
			$("#pwd_check").focus();
			return false;
		}
		//이메일
		if($("#email").val()==""){
			alert("이메일 입력하세요");
			$("#email").focus();
			return false;
		}
		//전화번호
		if($("#phone").val().match(exp)){
			alert("전화번호를 다시 입력하세요");
			$("#phone").focus();
			return false;
		}
		
	
	$("#frm").submit();
	});//send
	
	
	
	$("#idBtn").click(function() {
		window.open("idCheck.jsp",""<"width=800 height= 500")
		
	});//idbtn
	
	
	//아이디 중복확인
	$("#idcheckBtn").click(function() {
		if($("#id").val()==""){
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}
		$.ajax({
			type:"post",
			url :"idCheckpro.jsp",
			data:{"id":$("#id").val()},
			success:function(value){
				if(value.trim()=="yes"){
					alert("사용가능")
					$(opener.document).find("#id").val($("#id").val());
					$(opener.document).find("#uid").val($("#id").val());
					self.close();
				}else{
					alert("사용불가")
				}
			},
			error:function(e){
				
				alert("error:"+e)
			}
		});
		
		})//idcheckBtn
	});//document