<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "../js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
	$("#postbtn").click(function(){
		$.post("process.jsp",
							{"id" : document.getElementById("id").value,
							"pwd" : $("#pwd").val(),
							"method" : "post"},
			
			function(data){//콜백함수
				
				$("#postresult").html(data);//result에 뿌림
			
		    }
		
		);//post
	  });//postbtn
	  $("#getbtn").click(function () {
		  $.get("process.jsp", {
									  "id" : $("#id").val(),
								  	  "pwd" : $("#pwd").val(),
								  	  "method": "get"
		                         },
				  function (ret) {/*변수*/
					  $("#getresult").html(ret)
					
				   }
		 )//get
	  })//getbte
		$("#loadbtn").click(function () {
			$("#loadresult").load("process.jsp",{
								"id" : $("#id").val(),
						  	  	"pwd" : $("#pwd").val(),
						  	  	"method" : "load"
           						}
			);//load
		})//loadbtn
	$("#ajaxbtn").click(function(){
		$.ajax({
			type: "post",
			url	: "process.jsp",
			data: {
				"id" : $("#id").val(),
		  	  	"pwd" : $("#pwd").val(),
		  	  	"method" : "ajax"
				
			},
			success : function(d){
				$("#ajaxresult").html(d);
			},
			error : function(e){
				alert("에러:"+e);
			}
		});//ajax
	});//ajaxbtn

});//document
</script>
</head>
<body>

id : <input type="text" id="id" name="id"><br>
pwd : <input type="password" id="pwd" name="pwd"><br>
<input type="button" id="postbtn" value="post전송">
<input type="button" id="getbtn" value="get전송">
<input type="button" id="loadbtn" value="load전송">
<input type="button" id="ajaxbtn" value="ajax전송">
<br>
<div id="getresult"></div>
<div id="postresult"></div>
<div id="loadresult"></div>
<div id="ajaxresult"></div>


</body>
</html>