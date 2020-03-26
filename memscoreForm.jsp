<%@page import="java.awt.Event"%>
<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; 

charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; 

charset=UTF-8">
<title>MEMscore Form.jsp</title>
<script src="../JS/jquery-3.4.1.min.js"></script>
<style type="text/css">
input[id="id"],[id="name"],[id="score"],[id="level"]{
color: white;
}
</style>
</head>
<body>
<h2>memscore 의 정보입력</h2>
<style>


input[id="id"]{
background-color: #3232FF;
position: relative;
left: 41.8px;
padding: 10px;
}
input[id="name"]{
background-color: #3232FF;
position: relative;
left: 11.5px;
padding: 10px;
}
input[id="score"]{
background-color: #3232FF;
position: relative;
left: 8px;
padding: 10px;
}
input[id="level"]{
background-color: #3232FF;
position: relative;
left: 14.85px;
padding: 10px;
}
input[id="com"],[id="del"]{
margin: 10px;
}

</style>
<script>
$(function(){
$("#id").keyup(function(event){
if (!(event.keyCode >=37 && event.keyCode<=40)) { 
var inputVal=$(this).val(); 
$(this).val(inputVal.replace(/[^a-z0-9@_.-]/gi,''));
} 
}); 
});


</script>

<form action="memberPro.jsp" method="post">
<label for="id">ID</label>
<input type="text" id="id" name="id"
 placeholder="ID입력" autofocus required/><br />
<label for="name">NAME</label>
<input type="text" id="name" name="name" placeholder="NAME입력"/><br />
<label for="score">SCORE</label>
<input type="text" id="score" name="score" 
onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="SCORE입력"/><br />
<label for="level">LEVEL</label>
<input type="text" id="level" name="level" placeholder="LEVEL입력"/><br />
<input type="submit" id="com" value="확인" />
<input type="reset"  id="del" value="삭제"/>

</form>
</body>
</html>