<%@page import="java.util.List"%>
<%@page import="com.hb.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<GuestVo> list = (List<GuestVo>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style></style>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>리스트 페이지</h1>
	<table>
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<% for(GuestVo vo:list){ %>
		<tr>
			<td><%=vo.getSabun() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getNalja() %></td>
			<td><%=vo.getPay() %></td>
		</tr>
		<%} %>
	</table>
	<p><a href="add.action">입력</a></p>
</body>
</html>








