<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
//사용	
String sessionOut = (String)request.getAttribute("sessionOut");
if(sessionOut != null && !sessionOut.equals("")){
	%>
		<script type="text/javascript">
		alert("로그아웃되었습니다");
		location.href = "login.do";
		</script>
		<%
	}
		%>

<%
//사용	
String message = (String)request.getAttribute("message");
if(message != null && !message.equals("")){
	if(message.equals("MEMBER_ADD_YES")){
		%>
		<script type="text/javascript">
		alert("성공적으로 가입되었습니다");
		location.href = "login.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("가입되지 않았습니다 다시 가입해 주십시오");
		location.href = "regi.do";
		</script>
		<%		
	}
}
//사용	
String login = (String)request.getAttribute("login");
if(login != null && !login.equals("")){
	if(login.equals("LOGIN_OK")){
		%>
		<script type="text/javascript">
		alert("로그인 되었습니다");
		location.href = "members.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("아이디나 패스워드를 확인해 주십시오");
		location.href = "login.do";
		</script>
		<%		
	}
}



//사용	
String go = (String)request.getAttribute("go");
String modifyName = (String)request.getAttribute("modifyName");
if(modifyName != null && !modifyName.equals("")){
	if(modifyName.equals("YES")){
		%>
		<script type="text/javascript">
		alert("이름이 성공적으로 수정되었습니다");
		</script>
		<%
		response.sendRedirect(go+".do");		
	} else{
		%>
		<script type="text/javascript">
		alert("수정 실패");
		</script>
<%		response.sendRedirect(go+".do");
	}
}


//사용	
String modifyEmail = (String)request.getAttribute("modifyEmail");
if(modifyEmail != null && !modifyEmail.equals("")){
	if(modifyEmail.equals("YES")){
		%>
		<script type="text/javascript">
		alert("메일주소가 성공적으로 수정되었습니다");
		</script>
		<%
		response.sendRedirect(go+".do");		
	} else{
		%>
		<script type="text/javascript">
		alert("수정 실패");
		</script>
<%		response.sendRedirect(go+".do");
	}
}


//사용
//String modifyContact = (String)request.getAttribute("modifyContact");


//사용	
String modifyAuth = (String)request.getAttribute("modifyAuth");
if(modifyAuth != null && !modifyAuth.equals("")){
	if(modifyAuth.equals("YES")){
		%>
		<script type="text/javascript">
		alert("연락처가 성공적으로 수정되었습니다");
		</script>
		<%
		response.sendRedirect(go+".do");		
	} else{
		%>
		<script type="text/javascript">
		alert("수정 실패");
		</script>
<%		response.sendRedirect(go+".do");
	}
}


/* ***** calendar ***** */
//String calWrite = (String)request.getAttribute("calWrite");


//String calUpdate = (String)request.getAttribute("calupdate");

//String calDelete = (String)request.getAttribute("caldelete");



/* ***** QNA ***** */
//사용	
//String addAns = (String)request.getAttribute("addAns");


/* ***** pps ***** */
//사용	
//String delPps = (String)request.getAttribute("delPps");

//사용	
//String showPps = (String)request.getAttribute("showPps");



/* ***** bbs ***** */
//사용	
String delBbs = (String)request.getAttribute("delBbs");
if(delBbs != null && !delBbs.equals("")){
	if(delBbs.equals("YES")){
		%>
		<script type="text/javascript">
		alert("숨김처리 되었습니다");
		</script>
		<%
		response.sendRedirect("bbs.do");		
	} else{
		%>
		<script type="text/javascript">
		alert("실패");
		</script>
<%		response.sendRedirect("bbs.do");
	}
}
//사용	
String showBbs = (String)request.getAttribute("showBbs");
if(showBbs != null && !showBbs.equals("")){
	if(showBbs.equals("YES")){
		%>
		<script type="text/javascript">
		alert("숨김처리 되었습니다");
		</script>
		<%
		response.sendRedirect("bbs.do");		
	} else{
		%>
		<script type="text/javascript">
		alert("실패");
		</script>
<%		response.sendRedirect("bbs.do");
	}
}

/* ***** bbs ***** */
//사용	
String delCmt = (String)request.getAttribute("delCmt");
if(delCmt != null && !delCmt.equals("")){
	if(delCmt.equals("YES")){
		%>
		<script type="text/javascript">
		alert("숨김처리 되었습니다");
		</script>
		<%
		response.sendRedirect("cmt.do");		
	} else{
		%>
		<script type="text/javascript">
		alert("실패");
		</script>
<%		response.sendRedirect("cmt.do");
	}
}
//사용	
String showCmt = (String)request.getAttribute("showCmt");
if(showCmt != null && !showCmt.equals("")){
	if(showCmt.equals("YES")){
		%>
		<script type="text/javascript">
		alert("숨김처리 되었습니다");
		</script>
		<%
		response.sendRedirect("cmt.do");		
	} else{
		%>
		<script type="text/javascript">
		alert("실패");
		</script>
<%		response.sendRedirect("cmt.do");
	}
}


/* ***** nbs ***** */
//사용	
//String delNbs = (String)request.getAttribute("delNbs");

//사용	
//String showNbs = (String)request.getAttribute("showNbs");



%>