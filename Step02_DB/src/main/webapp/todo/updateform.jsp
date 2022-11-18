<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //수정할 회원의 번호를 읽어와서 
   int num=Integer.parseInt(request.getParameter("num"));
   //해당 할일의 정보를 DB 에서 불러온다음
   TodoDto dto=TodoDao.getInstance().getData(num);
   //수정할수 있는 폼을 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/updateform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
   <div class="container">
      <form action="update.jsp" method="post">
      <!-- 
      	disabled 된 input 요소는 폼을 제출했을 때 전송이 안되기 때문에
      	input type="hidden" 요소를 이용해서 회원의 번호가 폼을 제출했을때 전송되돌고 한다.
       -->
		<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
		<div class="">
			<label for="num">번호</label>
			<input type="text" name="num" id="num" value="<%=dto.getNum() %>" readonly/>
		</div>
		<div class="">
			<label for="content">내용</label>
			<input type="text" name="content" id="content" value="<%=dto.getContent()%>"/>
		</div>
		<div class="">
			<label for="regdate">등록일</label>
			<input type="text" name="regdate" id="regdate" value="<%=dto.getRegdate() %>" readonly/>
		</div>
		<button class="" type="submit">수정확인</button>
		<button class="" type="reset">취소</button>
      </form>
   </div>
</body>
</html>
