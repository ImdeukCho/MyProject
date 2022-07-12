<%@page import="com.dto.ClassDTO"%>
<%@page import="com.service.ClassService"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

//파일이 저장될 서버의 경로. 되도록이면 getRealPath를 이용하자
//서버의 위치 - webapp(맨앞의 /) 아래의 위치 
String path = "/upload/member/";
//서버 컴퓨터의 실제적으로 저장되는 폴더 위치 
String savePath = request.getServletContext().getRealPath(path);
//파일 크기 15MB로 제한
int sizeLimit = 1024*1024*15;

//↓ request 객체,               ↓ 저장될 서버 경로,       ↓ 파일 최대 크기,    ↓ 인코딩 방식,       ↓ 같은 이름의 파일명 방지 처리
//(HttpServletRequest request, String saveDirectory, int maxPostSize, String encoding, FileRenamePolicy policy)
//아래와 같이 MultipartRequest를 생성만 해주면 파일이 업로드 된다.(파일 자체의 업로드 완료)
MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

//MultipartRequest로 전송받은 데이터를 불러온다.
//enctype을 "multipart/form-data"로 선언하고 submit한 데이터들은 request객체가 아닌 MultipartRequest객체로 불러와야 한다
	String userId = multi.getParameter("userId");
	String userPasswd = multi.getParameter("userPasswd");
	String userName = multi.getParameter("userName");
	String gender = multi.getParameter("gender");
	String birth = multi.getParameter("birth");
	String phone1 = multi.getParameter("phone1");
	String phone2 = multi.getParameter("phone2");
	String phone3 = multi.getParameter("phone3");
	String phone = phone1+phone2+phone3;
	String address = multi.getParameter("address");
	String email = multi.getParameter("email");
	String certificateData = multi.getParameter("certificateData");
	String[] hobby = multi.getParameterValues("hobby");
// 전송받은 데이터가 파일일 경우 getFilesystemName()으로 파일 이름을 받아올 수 있다.
// 저장 데이터는 위치(path) + "/" + 서버의 파일명
	String profilePhoto = multi.getFilesystemName("profilePhoto");
	if(profilePhoto == null || profilePhoto.equals(""))
		profilePhoto = "/upload/member/noImage.jpg";
	else
		profilePhoto = path + "/" + profilePhoto;
	
	String certificatePhoto = multi.getFilesystemName("certificatePhoto");
	if(certificatePhoto == null || certificatePhoto.equals(""))
		certificatePhoto = "/upload/member/noImage.jpg";
	else
		certificatePhoto = path + "/" + certificatePhoto;

	
	// 데이터들을 담을 그릇인 DTO(혹은 Bean) 객체를 생성 후, 데이터들을 set해준다.
	ClassDTO dto = new ClassDTO();
	dto.setUserId(userId);
	dto.setUserPasswd(userPasswd);
	dto.setUserName(userName);
	dto.setGender(gender);
	dto.setBirth(birth);
	dto.setPhone(phone);
	dto.setAddress(address);
	dto.setEmail(email);
	dto.setProfilePhoto(profilePhoto);
	dto.setCertificatePhoto(certificatePhoto);
	dto.setCertificateData(certificateData);
	dto.setHobby(String.join(",", hobby));
	
// Service 객체 생성.(서비스가 없고 DAO에서 직접 처리한다면 DAO 객체 생성)
	ClassService service = new ClassService();
// 서비스에서 만들어놓은 insert 수행 메서드 사용. set으로 담아줬던 DTO를 넘겨서 insert 수행.
	int n = service.memberAdd(dto);
// ↓ 모든 것이 성공적으로 수행되었을 경우 return 될 page
	//return "MainTest.html";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
  String mesg = "회원가입 실패";
  if( n==1){
	  mesg = "회원가입 성공";
  }
%>
<%= mesg %>
  <a href="managementMember.jsp">목록보기</a> --%>
</body>
</html>