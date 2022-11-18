<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //폼 전송되는 할일을 읽어와서 
   request.setCharacterEncoding("utf-8");
   String content=request.getParameter("content");
   //TodoDto 에 담고
   TodoDto dto=new TodoDto();
   dto.setContent(content);
   //DB 에 저장하고 
   boolean isSuccess=TodoDao.getInstance().insert(dto);
   //응답하기
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/insert.jsp</title>
</head>
<body>
   <div class="container">
      <%if(isSuccess){ %>
         <p class="alert alert-success">
            <strong><%=content %></strong>성공적인 추가.
            <a class="alert-link" href="list.jsp">확인</a>
            <a class="alert-link" href="${pageContext.request.contextPath}/todo/list.jsp">확인</a>
         </p>
      <%}else{ %>
         <p class="alert alert-danger">
            할일 추가 실패!
            <a class="alert-link" href="insertform.jsp">다시 시도</a>
            <a href="${pageContext.request.contextPath}/todo/insertform.jsp">다시 시도</a>
         </p>
      <%} %>
   </div>
</body>
</html>
