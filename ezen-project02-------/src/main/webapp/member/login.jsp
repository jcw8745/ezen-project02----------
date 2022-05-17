<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member1.js"></script>
</head>
<body>
<h2>로그인</h2>
<form action="login.do" method="post" name="frm">
<table>
<tr>
<td>아이디</td>
<td><input type="text" name="id" value="${id }"></td>
</tr>
<tr>
<td>암 호 </td>
<td><input type="password" name="pwd"></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" class="btn btn-secondary" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
<input type="reset" class="btn btn-secondary" value="취소">&nbsp;&nbsp;
<input type="button" class="btn btn-secondary" value="회원가입" onclick="location.href='join.do'">
<input type="button" class="btn btn-secondary" value="아이디 찾기" onclick="location.href='memberfind.do'">

</td>
</tr>
<tr><td colspan="2" >${message }</td></tr>
</table>
</form>

</body>
</html>