<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>/todo/insertform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	   <nav class="mt-2">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">
					<a href="${pageContext.request.contextPath }/index.jsp">Home</a>
				</li>
				<li class="breadcrumb-item">
					<a href="${pageContext.request.contextPath }/todo/list.jsp">목록</a>
				</li>
				<li class="breadcrumb-item active">추가 페이지</li>
			</ol>
		</nav>
		<h1>할일 추가 양식</h1>
		<form action="${pageContext.request.contextPath}/todo/insert.jsp" method="post">
			<div class="mb-3">
				<label class="form-label" for="name">할일</label>
				<input type="form-control" name="content" id="content"/>
			</div>
			<div class="mb-3">
				<label class="form-label" for="regdate">등록일</label>
				<input type="form-control" name="regdate" id="regdate"/>
			</div>
			<button class="btn btn-primary" type="submit">추가</button>
		</form>
	</div>
</body>
</html>