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
	$("button").click(function(){
		$("#displayArea").html("<imp src='1.gif' border=0>");
		alert($(this).text());
		$(this).text("여기도 바뀔까")
		
	})//button
	$("#txtbtn").on("click",function(){
		alert($("#txt").val())
		$("#txt").val("txt 내용변경");
	});//btn
})//document

</script>
</head>
<body>
<div id="display/Area">이곳의 내용이 변경</div>
<button>표시</button>
<input type="text" id="txt" value= "초기값"><br>
<input type="button" value="txt클릭" id="txtbtn" >
</body>
</html>