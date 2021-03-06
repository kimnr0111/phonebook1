<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
    
<%
	int personId = Integer.parseInt(request.getParameter("personid"));
	System.out.println(personId);
	
	PhoneDao phoneDao = new PhoneDao();
	PersonVo personVo = phoneDao.getPerson(personId);
	System.out.println(personVo.toString());
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 수정용</h1>
		<p>
			전화번호를 수정하려면<br>
			아래 항목을 수정하고 "수정" 버튼을 클릭하세요.
		</p>
		<form action="./update.jsp" method="post">
			이름(name): <input type="text" name="name" value="<%=personVo.getName()%>"><br>
			핸드폰(hp): <input type="text" name="hp" value="<%=personVo.getHp()%>"><br>
			회사(company): <input type="text" name="company" value="<%=personVo.getCompany()%>"><br>
			<input type="hidden" name="personid" value="<%=personVo.getPersonId()%>">
			<button type="submit">수정</button>
		</form>

</body>
</html>