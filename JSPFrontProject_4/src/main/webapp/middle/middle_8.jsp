<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container-fluid{
   margin-top: 50px;
}
.row{
   margin: 0px auto;
   width: 800px;
}
</style>
<script type="text/javascript">
let index=1
// function prev()
// let prev=function(){}
let prev=()=>{
	index--;
	if(index<1)
		index=7;
	let img=document.querySelector('img');
	img.src='../image/m'+index+'.jpg'
}
// function next()
// let next=function(){}
// callback ==> ajax,axios
let next=()=>{
	index++;
	if(index>7)
		index=1;
	let img=document.querySelector('img');
	img.src='../image/m'+index+'.jpg'
}
/* function aaa()
{
	let bbb=function(){}
} */
</script>
</head>
<body>
  <div class="container">
   <div class="row">
    <div class="text-center">
     <img src="../image/m1.jpg" style="width: 450px;height: 500px">
    </div>
    <div style="height: 10px"></div>
    <div class="row">
     <div class="text-center">
      <input type=button class="btn-lg btn-primary" value="이전" onclick="prev()">
      <input type=button class="btn-lg btn-danger" value="다음" onclick="next()">
     </div>
    </div>
   </div>
  </div>
</body>
</html>