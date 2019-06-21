<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    


<html>
<head>
<meta charset=UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
<table border="1"  align="center"  width="80%">
    <tr align="center"   bgcolor="lightgreen">
      <td ><b>MNO</b></td>
      <td><b>MNAME</b></td>
      <td><b>EMAIL</b></td>
      <td><b>PWD</b></td>
      <td><b>CRE_DATE</b></td>
   </tr>
   
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center">
      <td>${member.MNO}</td>
      <td>${member.MNAME}</td>
      <td>${member.EMAIL}</td>
      <td>${member.PWD}</td>
      <td>${member.CRE_DATE}</td>
      
    </tr>
  </c:forEach>   
</table>
<a  href="${contextPath}/member/memberForm.do"><h1 style="text-align:center">회원가입</h1></a>
</body>
</html>
