<%@page import="com.dto.ClassDTO"%>
<%@page import="com.service.ClassService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    ClassService service = new ClassService();
    List<ClassDTO> list = service.select();
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk(n) {
		var lang= document.querySelectorAll(".delCheck");
		for(var i=0; i< lang.length; i++){
			lang[i].checked= n.checked;
		}
	}
	function delAll() {
		document.querySelector("#MemberForm").action='deleteAllMember.jsp';
	}
	function delMember(n) {
		 event.preventDefault(); 
		location.href="deleteMember.jsp?UserId="+n;		
	}
</script>
</head>
<body>
<form id="MemberForm">
<table border="1">
	<tr>
	   <td><input type="checkbox" name="delCheckAll" id="delCheckAll" onclick="chk(this)">전체선택</td>
	   <td>UserId</td>
	   <td>UserPasswd</td>
	   <td>getUserName</td>
	   <td>Gender</td>
	   <td>Birth</td>
	   <td>Phone</td>
	   <td>Address</td>
	   <td>Email(</td>
	   <td>Profilephoto</td>
	   <td>Certificatephoto</td>
	   <td>CertificateData</td>
	   <td>Hobby</td>
	   <td>cardName</td>
	   <td>cardNo</td>
	 </tr>
<%
   for(ClassDTO dto: list){
%> 
 <tr>
    <td><input type="checkbox" name="delCheck"  class="delCheck" value="<%= dto.getUserId()%>"></td>
    <td><%= dto.getUserId()%></td>
    <td><%= dto.getUserPasswd()%></td>
    <td><%= dto.getUserName()%></td>
    <td><%= dto.getGender()%></td>
    <td><%= dto.getBirth()%></td>
    <td><%= dto.getPhone()%></td>
    <td><%= dto.getAddress()%></td>
    <td><%= dto.getEmail()%></td>
    <td><%= dto.getProfilephoto()%></td>
    <td><%= dto.getCertificatephoto()%></td>
    <td><%= dto.getCertificateData()%></td>
    <td><%= dto.getHobby()%></td>
    <td><%= dto.getCardName()%></td>
    <td><%= dto.getCardNo()%></td>
    <td><button onclick="delMember('<%=dto.getUserId() %>')" >삭제</button></td>
  </tr>
<%
   }
%>  
</table>
<button id="deleteAllMember" onclick="delAll()">선택된 항목 삭제</button>
</form>
</body>
</html>