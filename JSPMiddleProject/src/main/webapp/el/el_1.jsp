<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
      EL => Expression Language : 표현식
            => 데이터를 화면에 출력 (대체 <%= %>)
            => ${출력할 데이터}
      목적 : JSP페이지에서 자바코드를 최소화하는 정책 
            => 웹디자이너가 어렵게 느끼기 때문에 => 579page
      1. EL
         연산자 / 내장 객체 
         => Spring , Spring-Boot , 실무
         1) 산술연산자
            + - * / %
            + : 순수하게 산술만 가능
            5+7=12 => ${5+7}
            ${"5"+7} => 12
              ===
            ${null+7} => 7 => null을 0으로 인식
            ${"A"+7} => 오류발생
            ==> 문자열 결합 연산자 A7 => ${"A" += 7}
                                        ====
            / => div => ${7/2} ${7 div 2}
            *** 0으로 나눌 수 없다 
            *** 정수/정수=실수 ${5/2} => 2.5
            
            % => mod => ${7%2} , 4{7 mod 2}
         2) 비교연산자 => boolean => 조건문 처리 
            == (eq) 같다 ${7==7} ${7 eq 7}
            != (ne) 같지 않다 ${7!=7} ${7 ne 7}
            < (lt) 작다
            > (gt) 크다 
            <= (le) 작거나 같다
            >= (ge) 크거나 같다 
         3) 논리연산자 => boolean
            && => and => 조건 두개가 true일때만 true
            || => or => 조건이 한개 이상이면 true
            !  => not => 부정 
            (조건) && (조건) => (조건) and (조건)
            (조건) || (조건) => (조건) or (조건)
            (조건) ! (조건) => (조건) not (조건)
         4) 삼항연산자
            조건?값:값
               =  =
                  |조건이 false
               |조건이 true
         5) 기타연산자
            => 배열 [] , 우선순위 () , 객체 접근 => .
            => empty : 값이 null이거나 없는 경우 확인 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%-- \${7+2 }=${7+2 }<br>
 \${null+7}=${null+7}<br>
 \${"7"+7 }=${"7"+7}<br>
 \${"7" += 7}= ${"7"+=7}<br>
 \${7*2 }=${7*2} --%>
 <%-- \${7/3}=${7/3}<br>
 \${7 div 3}=${7 div 3}<br>
 \${5%2 }=${5%2 }<br>
 \${5 mod 2 }=${5 mod 2 }<br> --%>
 
 <%-- \${7==7}=${7==7}<br> 
 \${7 eq 7}=${7 eq 7}<br>
 
 \${7!=7}=${7!=7}<br> 
 \${7 ne 7}=${7 ne 7}<br>
 
 \${7<7}=${7<7}<br> 
 \${7 lt 7}=${7 lt 7}<br>
 
 \${7>7}=${7>7}<br> 
 \${7 gt 7}=${7 gt 7}<br>
 
 \${7<=7}=${7<=7}<br> 
 \${7 le 7}=${7 le 7}<br>
 
 \${7>=7}=${7>=7}<br> 
 \${7 ge 7}=${7 ge 7}<br> --%>
 
 <%-- \${"Hello" == "Hello" }=${"Hello" == "Hello" } --%>
 <%-- \${8==7 && 8<9 }=${8==7 && 8<9 }<br>
 \${8==7 and 8<9 }=${8==7 and 8<9 }<br>
 \${8==7 || 8<9 }=${8==7 || 8<9 }<br>
 \${8==7 or 8<9 }=${8==7 or 8<9 }<br>
 \${not (8==7 || 8<9) }=${not(8==7 || 8<9) } --%>
 
 <%-- \${8==8?"OK":"NO"}=${8==8?"OK":"NO"} --%>
 </body>
</html>















