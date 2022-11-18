<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//TodoDao ��ü�� �̿��ؼ� ���� ����� ���´�.
	List<TodoDto> list=TodoDao.getInstance().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<style>
	.icon-link{
		font-size: 24px;
	}
	.icon-link svg{
		/* tranform �� �����Ҷ� 0.4 �� ���� ��ȭ�ǵ��� �����ض�.*/
		transition: transform 0.4 ease-out;
	}
	.icon-link svg:hover{
		/* ���� ũ���� 1.2 ��� Ȯ�� �ض�.*/
		transform: scale(1.2);
	}
</style>
</head>
<body>
	<%--
		/include/navbar.jsp ���Խ�Ű��
		
		-���Ե� jsp �������� �Ķ���͸� �����Ҽ� �� �ִ�.
		-�Ķ���͸� ������ �����ؼ� ���Ե� jsp ������ ������ �ش� �Ķ���͸� �����ؼ� � ������ �����Ҽ� �ִ�.
		-�Ʒ� ���� ���� thisPage ��� �Ķ���� ������ todo ��� ���ڿ��� �����ϴ� ���̴�.
		-�׷��� ��ġ navbar.jsp?thisPage=todo  ��û�ѰͰ� ����� ȿ���� �Ǿ
		 navbar.jsp ������ ���ο���
		 
		 String thisPage=request.getParameter("thisPage");
		 
		 �ڵ带 �����ϸ� thisPage �ȿ� "todo" ��� ���ڿ��� ����ֵ� �ȴ�.
	 --%>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="todo" name="thisPage"/>
	</jsp:include>
	
	<div class="container">
		<a href="${pageContext.request.contextPath }/todo/insertform.jsp" class="icon-link">
			<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" class="bi bi-person-plus" viewBox="0 0 16 16">
				<path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
				<path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
			</svg>
			<span class="visually hidden">ȸ���߰�</span>
		</a>
		<h1>ȸ�� ��� �Դϴ�.</h1>
		<table class="table table-striped">
			<thead>
				<tr class="table-dark">
					<th>��ȣ</th>
					<th>����</th>
					<th>�����</th>
					<th>����</th>
					<th>����</th>
				</tr>
			</thead>
			<tbody>
			<%for(TodoDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getContent() %></td>
					<td><%=tmp.getRegdate() %></td>
					<td>
						<a href="updateform.jsp?num=<%=tmp.getNum() %>">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
								<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
								<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
							</svg>
							<span class="visually hidden">����</span>
						</a>
					</td>
					<td>
						<a href="delete.jsp?num=<%=tmp.getNum() %>">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
								<path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
								<path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>	
							</svg>
							<span class="visually hidden">ȸ������</span>
						</a>
					</td>
				</tr>
			<%} %>
			</tbody>
		</table>
	</div>
</body>
</html>