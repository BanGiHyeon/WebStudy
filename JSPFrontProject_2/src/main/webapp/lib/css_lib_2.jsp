<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
   margin-top: 50px;
}
.row{
   margin: 0px auto;/* 가운데 정렬 */
   width: 800px;
}
/*
   button => 모든 태그에 적용이 가능 => <a> , <span>
   1. class
      크기 : btn-sm / btn-lg / btn-xs (찜하기,좋아요,예약)
      형식 : btn
      색상 : btn-success 
           btn-danger
           btn-primary
           btn-warning
           btn-default
           btn-info
*/
</style>
</head>
<body>
  <div class="container">
   <div class="row">
     <input type="button" value="danger" class="btn btn-lg btn-danger">
     <input type="button" value="success" class="btn btn-lg btn-success">
     <input type="button" value="warning" class="btn btn-lg btn-warning">
     <input type="button" value="primary" class="btn btn-lg btn-primary">
     <input type="button" value="default" class="btn btn-lg btn-default">
     <input type="button" value="info" class="btn btn-lg btn-info">
   </div>
   <div style="height: 10px">
    <div class="row">
     <input type="button" value="danger" class="btn btn-sm btn-danger">
     <input type="button" value="success" class="btn btn-sm btn-success">
     <input type="button" value="warning" class="btn btn-sm btn-warning">
     <input type="button" value="primary" class="btn btn-sm btn-primary">
     <input type="button" value="default" class="btn btn-sm btn-default">
     <input type="button" value="info" class="btn btn-sm btn-info">
    </div>
   </div>
   <div style="height: 10px">
    <div class="row">
     <input type="button" value="danger" class="btn btn-xs btn-danger">
     <input type="button" value="success" class="btn btn-xs btn-success">
     <input type="button" value="warning" class="btn btn-xs btn-warning">
     <input type="button" value="primary" class="btn btn-xs btn-primary">
     <input type="button" value="default" class="btn btn-xs btn-default">
     <input type="button" value="info" class="btn btn-xs btn-info">
    </div>
   </div>
   <div style="height: 10px">
    <div class="row">
     <a href="" class="btn btn-sm btn-danger">이전</a>
     <a href="" class="btn btn-sm btn-info">다음</a>
     <span class="btn btn-sm btn-danger">수정</span>
     <span class="btn btn-sm btn-primary">삭제</span>
    </div>
   </div>
  </div>
</body>
</html>












