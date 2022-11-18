<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //수정할 할일의 번호와 내용을 읽어온다.
   request.setCharacterEncoding("utf-8");
   int num=Integer.parseInt(request.getParameter("num"));
   String content=request.getParameter("content");
   
   //TodoDto 에 담고
   TodoDto dto=new TodoDto();
   dto.setNum(num);
   dto.setContent(content);
   
   //수정반영
   boolean isSuccess=TodoDao.getInstance().update(dto);
   
   //응답
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/update.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
   <script>
      <%if(isSuccess){%>
         alert("수정 했습니다.");
         location.href="list.jsp";
      <%}else{%>
         alert("수정 실패!");
         location.href="updateform.jsp?num=<%=num %>";
      <%}%>
   </script>
</body>
</html>
