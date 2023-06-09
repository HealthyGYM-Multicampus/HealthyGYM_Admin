<%@page import="com.mul.Healthygym.dto.BbsDto"%>
<%@page import="com.mul.Healthygym.dto.MemberDto"%>
<%@page import="com.mul.Healthygym.dto.CmtDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<!DOCTYPE html>

<style>
.container {
	width: 100%;
	height: 600px;
	overflow-y:auto; 
}

#ListTable {
	width: 100%;
	font-size: small;
	border-collapse: collaps
}

#ListTable th {
	height: 40px;
	position: sticky;
	top: 0px;
	background-color: #F0F0F0;
}


.popUpdate {
	position: absolute;
	z-index: 1;

	width: 100%;
	height: 100%;
	display: none;
}

.popUpdate>article {
	width: 500px;
	height: 500px;
	position: relative;
	z-index: 2;
	background: white;
	box-shadow: 3px 3px 5px black;
	margin: auto;
	cursor: pointer;
	text-align: center;
}

.popUpdate2 {
	position: absolute;
	z-index: 1;

	width: 100%;
	height: 100%;
	display: none;
}

.popUpdate2>article {
	width: 500px;
	height: 500px;
	position: relative;
	z-index: 2;
	background: white;
	box-shadow: 3px 3px 5px black;
	margin: auto;
	cursor: pointer;
	text-align: center;
}

.black { 
background:rgba(0,0,0,0.001);
width: 60%;
height:100%;
 }

select{
  border:1px solid #c8c8c8;
  padding: 5px 10px;
}
option {
  color:#111;
}
select:required:invalid {
   color: #909090;
}
option[value=""][disabled] {
  display:none
}
</style>
<body>

	<%
List<CmtDto> list = (List<CmtDto>) request.getAttribute("cmt");
String type = (String)request.getAttribute("type");
String go = (String)request.getAttribute("go");
	
%>
	<h1><%= type %></h1>


	<div class="container">
		<table id="ListTable" class="table table-hover">
			<col width="10%">
			<col width="10%">
			<col width="60%">
			<col width="20%">
	
			<tr>
				<th>회원번호</th>
				<th>닉네임</th>
				<th>내용</th>
				<th>작성일</th>
				
			
			
			</tr>
			
			
			<%
			if(list.isEmpty()){ %>
			<tr>
			<td colspan="6"> 게시글이 없습니다</td>
			</tr>
			<%	
			}else{
			 %>
			<%

		for (int i = 0; i < list.size(); i++) {
	
			CmtDto dto = list.get(i);
			String s = Integer.toString(i);
			int id = dto.getId();
		%>
			<tr>
				<td><b><%=dto.getId()%></b></td>
				<td><%=dto.getName()%></td>
				<td><%=dto.getCmtcontent()%></td>
				<td><%=dto.getRegdate()%></td>
			
			<!-- 
				<td>
					<button class="btn btn-danger btn-sm" id=ppsUpdate<%= s %> >숨김 및 조회</button>
				</td>
			
				<td>
					<button class="btn btn-primary btn-sm" id=ppsUpdate2<%= s %> >노출</button>
				</td>
			
			
			<% if(dto.getCmtdel() == 0){ %>
				<td><span style="color: blue">정상노출</span></td>
				<%}else{ %>
				<td><span style="color: red">숨김처리</span></td>
				<%} %>	
</tr>
			 -->
			 
			 <!-- 
			<div class=popUpdate id=popUpdate<%= s %>>
				<article>
				<br>
				<h3>게시글 숨김처리</h3>
				<h4>아이디 : <%= dto.getId() %> 님</h4>						
				<br>
			<textarea style="width:90%; height:110px; resize: none;" readonly="readonly">
				<%= dto.getCmtcontent() %>
		</textarea>
					<form action="delCmt.do" method="post" id=frm<%= s %>>
						<input type="hidden" name=seq value="<%=dto.getCommentseq()%>"> 				
						<br>
						<button type="submit" id=Btn<%=s%>
							class="btn btn-success btn-sm">페이지에서 숨김처리하기</button>
					</form>

					<br>		
				<br>	
					<button class="btn btn-secondary btn-sm" id=popclose1<%= s %> >창닫기</button>
				</article>
			</div>	
		 
				<script type="text/javascript">
				
			
				$(document).ready(function() {
					$("#ppsUpdate"+<%= s %>+":first-of-type").click(function() {
						$("#popUpdate"+<%= s %>).fadeIn();
						$("#popUpdate"+<%= s %>).addClass("black");
					});
					$("#popclose1"+<%= s %>).click(function() {
						$("#popUpdate"+<%= s %>).parent().fadeOut();
						location.reload();
					});
				});

				
			</script>
			
	 					
			<div class=popUpdate2 id=popUpdate2<%= s %>>
				<article>
				<br>
				<h3>게시글 노출처리</h3>
				<h4>아이디 : <%= dto.getId() %> 님</h4>						
				<br>
			<textarea style="width:90%; height:110px; resize: none;" readonly="readonly">
				<%= dto.getCmtcontent() %>
		</textarea>
					<form action="showCmt.do" method="post" id=frm<%= s %>>
						<input type="hidden" name=seq value="<%=dto.getCommentseq()%>"> 				
						<br>
						<button type="submit" id=Btn2<%=s%>
							class="btn btn-success btn-sm">페이지에서 노출처리하기</button>
					</form>

					<br>		
				<br>	
					<button class="btn btn-secondary btn-sm" id=popclose2<%= s %> >창닫기</button>
				</article>
			</div>	
		
				<script type="text/javascript">
				
			
				$(document).ready(function() {
					$("#ppsUpdate2"+<%= s %>+":first-of-type").click(function() {
						$("#popUpdate2"+<%= s %>).fadeIn();
						$("#popUpdate2"+<%= s %>).addClass("black");
					});
					$("#popclose2"+<%= s %>).click(function() {
						$("#popUpdate2"+<%= s %>).parent().fadeOut();
						location.reload();
					});
				});

				
			</script>
							-->
		

			<%
		}
		} %>

		</table>
	</div>


</body>