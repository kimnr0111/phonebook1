<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
    
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
    
<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
	System.out.println(personList.toString());

%>    

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트</h1>
	<p>입력한 정보 내역입니다.</p>
	
	<%for(PersonVo personVo : personList) {%>
	<table border = "1">
		<colgroup>
			<col style="width: 120px;">
			<col style="width: 170px;">
		</colgroup>
		
		<tr>
			<td>이름(name)</td>
			<td><%=personVo.getName() %></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%=personVo.getHp() %></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%=personVo.getCompany() %></td>
		</tr>
		<tr>
			<td>
			<a href="./updateform.jsp?personid=<%=personVo.getPersonId()%>">수정</a>
			</td>
			<td><a href="./delete.jsp?personid=<%=personVo.getPersonId()%>">삭제</a></td>
		</tr>
	</table>
	<br>
	<%} %>
	<p>
		<a href="http://localhost:8088/pb1/writeForm.jsp">추가번호 등록</a>
	</p>
	
	
</body>
</html>