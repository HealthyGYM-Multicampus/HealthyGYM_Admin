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




<div class="container" style="height: 100%;">

	  <div class="container">
      <div class="row">
        <div class="col-12">
     
          <div class="list-group">
            <a href="bbs.do" class="list-group-item list-group-item-action">자유게시판 관리</a>              
          </div>
        

          <div class="list-group">
            <a href="members.do" class="list-group-item list-group-item-action  list-group-item-info">전체회원</a>
            <a href="NomalMems.do" class="list-group-item list-group-item-action">일반회원</a>
            <a href="BanMems.do" class="list-group-item list-group-item-action">활동정지회원</a>
            <a href="Managers.do" class="list-group-item list-group-item-action">관리자</a>
          </div>
     
  
        </div>
      </div>
    </div>
	
	
	
	
</div>