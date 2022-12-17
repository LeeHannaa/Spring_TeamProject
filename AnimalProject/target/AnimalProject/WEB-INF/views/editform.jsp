<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin=“anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
		  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="${path}/resources/css/style.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<%--	<link rel="stylesheet" href="${path}/resources/css/style.css">--%>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Edit Form</title>
</head>
<body>

<div class="py-5 text-center" style="background-color: darkgray">
	<h2>동물 정보 수정!</h2>
	<p class="lead">수정하고 싶은 정보를 수정해주세요!</p>
</div>


<%--@elvariable id="boardVO" type="java"--%>
<form:form modelAttribute="u"  method="post" action="../editok">
	<form:hidden path="animalId"/>
	<table id="list">
		<div class="col-md-7 col-lg-8 ">
			<h4 class="mb-3"></h4>
			<form class="needs-validation" novalidate="">
				<div class="row g-3">
					<div class="col-sm-4">
						<label for="firstName" class="form-label">이름</label>
						<form:input path="animalName" class="form-control" />
						<div class="invalid-feedback">
							다시입력해주세요.
						</div>
					</div>

					<div class="col-sm-4">
						<label class="form-label">나이</label>
						<form:input path="age" class="form-control"/>
						<div class="invalid-feedback">
							다시입력해주세요.
						</div>
					</div>

					<div class="col-sm-4">
						<label class="form-label">성별</label>
						<form:input path="gender" class="form-control"/>
						<div class="invalid-feedback">
							다시입력해주세요.
						</div>
					</div>


					<div class="col-12">
						<label class="form-label">추가설명</label>
						<form:textarea cols="50" rows="5" class="form-control" path="information" />
						<div class="invalid-feedback">
							제대로 된 정보를 입력해주세요.
						</div>
					</div>

				</div>

				<hr class="my-4">

			</form>
		</div>
	</table>
</form:form>

<div class="py-5 text-center">
	<input class="w-100 btn btn-primary btn-lg" type="submit" value="수정하기" />
	<input class="w-100 btn btn-primary btn-lg" type="button" value="취소하기" onclick="history.back()" />
</div>



</body>
</html>