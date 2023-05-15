<%@page import="com.mul.Healthygym.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>




<div class="container" style="width: 280px;">
<a href="/" class="align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
<svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
</a>

	  <div class="container">  
      <div class="row">
        <div class="col-12">

          <div class="list-group">
            <a href="members.do" class="list-group-item list-group-item-action  list-group-item-info">전체회원</a>
            <a href="NomalMems.do" class="list-group-item list-group-item-action">일반회원</a>
            <a href="BanMems.do" class="list-group-item list-group-item-action">활동정지회원</a>
            <a href="Managers.do" class="list-group-item list-group-item-action">관리자</a>
          </div>
          
          
          <div class="list-group">
            <a href="bbs.do" class="list-group-item list-group-item-action  list-group-item-info">전체 게시글 조회</a>    
            <a href="bbs2.do" class="list-group-item list-group-item-action">바디갤러리</a>  
            <a href="bbs3.do" class="list-group-item list-group-item-action">정보게시판</a>  
            <a href="bbs4.do" class="list-group-item list-group-item-action">자유게시판</a>       
            <a href="bbs11.do" class="list-group-item list-group-item-action">식단게시판</a>       
          </div>
     
     <div class="list-group">
            <a href="bbs5.do" class="list-group-item list-group-item-action">운동메이트</a>    
            <a href="bbs10.do" class="list-group-item list-group-item-action">식단메이트</a>        
          </div>
          
          <div class="list-group">
            <a href="bbsReport.do" class="list-group-item list-group-item-action  list-group-item-info">신고된 게시글</a>     
            <a href="cmt.do" class="list-group-item list-group-item-action  list-group-item-info">댓글 조회</a>         
          </div>
  
        </div>
      </div>
    </div>
	
	
	
	
</div>