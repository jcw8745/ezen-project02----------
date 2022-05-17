<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <c:if test="${empty loginUser }">

    
    <jsp:forward page='login.do'/>
        </c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="member1.js"></script>
</head>
<body>
<form action="logout.do">
<table>
<tr>
<td>
<h3><span style="background-color:#dddddd;">
안녕하세요. ${loginUser.name }(${loginUser.id })님 &nbsp;&nbsp;

<c:choose>
<c:when test="${loginUser.admin==1 }">[관리자]</c:when>
<c:otherwise> 일반회원 </c:otherwise>
</c:choose>

</span></h3>
</td>



<td align="right">

<input type="submit" value="로그아웃">&nbsp;&nbsp;
<input type="button" value="회원정보변경" onclick="location.href='memberUpdate.do?id=${loginUser.id}'">

</td>
</tr>
</table></form>

</body>
</html>