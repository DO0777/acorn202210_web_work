<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//������ ��ȣ
	int num=Integer.parseInt(request.getParameter("num"));
	//�����ϱ�
	TodoDao.getInstance().delete(num);
	//�����̷�Ʈ �����ϱ�(Ư�� ��η� ��û�� �ٽ� �϶�� �����ϴ� ����)
	String cPath=request.getContextPath();
	response.sendRedirect(cPath+"/todo/list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>/todo/delete.jsp</title>
</head>
<body>

</body>
</html>