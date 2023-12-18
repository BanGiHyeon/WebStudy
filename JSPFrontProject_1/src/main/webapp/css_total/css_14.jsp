<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
    1. 선택자 => JavaScript
    2. 글자 관련 
    3. margin / padding / border
    4. background
    5. position
        => fixed
        => relative
        => 배치 => top/bottom/left/right
    6. overflow
    ===================================
    CSS는 약간의 수정
    => 퍼블리셔
    
    HTML / CSS => 화면 UI ******
    JavaScript => UI 제어
    Java => 데이터 관리
            오라클 ==> 자바 ==> HTML/JavaScript
    오라클 => 데이터 저장 장소
    ============ 통합 (Spring)
    Spring-Boot <==> Front
    =========== MSA 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
 margin: 0px;
 padding: 0px;
}
body{
 width: 960px;
 margin: 0px auto;
 overflow: hidden;
}
#nav{
  width: 300px;
  float: left;
}
#section{
  width: 660px;
  float: right;
}
li{
 list-style: none;
}
@media screen and (max-width:768px){
  body{width: auto}
  #nav{width: auto;float: none}
  #section{width: auto;float: none}
}
</style>
</head>
<body>
  <div id="nav">
   <ul>
    <li>홈</li>
    <li>뉴스1</li>
    <li>뉴스2</li>
   </ul>
  </div>
  <div id="section">
  경기 초반부터 가벼움 몸놀림을 뽐낸 모드리치는 전반 22분 크로스의 패스를 받고 강력한 중거리 슛을 때렸지만 크로스바를 스치며 아쉬움을 삼켰다. 
  이내 전반 25분 모드리치는 환상적인 크로스로 주드 벨링엄의 선제골을 도우며 팀의 리드를 안겨줬다.

  전반 2-0으로 앞선 레알은 비아레알에 일격을 한 차례 당하기도 했지만, 추가골을 집어넣으며 스코어를 3-1로 만들었다. 
  경기에 방점을 찍은 것은 다름 아닌 모드리치였다. 모드리치는 호드리구가 상대 박스 오른쪽으로 내준 패스를 왼발로 깔끔하게 쐐기포를 작렬했다
  </div>
</body>
</html>