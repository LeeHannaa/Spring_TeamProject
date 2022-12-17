<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>

<html>
<head>

	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin=“anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
		  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>



	<%--<link rel="stylesheet" href="${path}/resources/css/style.css">--%>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>free board</title>
	<script>
		function delete_ok(id){
			const a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deleteok/' + id;
		}
		function logout(){
			const check = confirm("정말 로그아웃하시겠습니까?");
			if(check) location.href="../login/logout";
		}
	</script>



	<style>
		.bd-placeholder-img {
			font-size: 1.125rem;
			text-anchor: middle;
			-webkit-user-select: none;
			-moz-user-select: none;
			user-select: none;
		}

		@media (min-width: 768px) {
			.bd-placeholder-img-lg {
				font-size: 3.5rem;
			}
		}

		.b-example-divider {
			height: 3rem;
			background-color: rgba(0, 0, 0, .1);
			border: solid rgba(0, 0, 0, .15);
			border-width: 1px 0;
			box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
		}

		.b-example-vr {
			flex-shrink: 0;
			width: 1.5rem;
			height: 100vh;
		}

		.bi {
			vertical-align: -.125em;
			fill: currentColor;
		}

		.nav-scroller {
			position: relative;
			z-index: 2;
			height: 2.75rem;
			overflow-y: hidden;
		}

		.nav-scroller .nav {
			display: flex;
			flex-wrap: nowrap;
			padding-bottom: 1rem;
			margin-top: -1px;
			overflow-x: auto;
			text-align: center;
			white-space: nowrap;
			-webkit-overflow-scrolling: touch;
		}


		#1_div{
			display: none;
		}
		#2_div{
			display: none;
		}
		#3_div{
			display: none;
		}

	</style>


</head>
<body>



<header>
	<div class="collapse bg-dark" id="navbarHeader">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-md-7 py-4">
					<h4 class="text-white">동물분양사이트</h4>
					<p class="text-muted">분양시키고 싶은 동물들의 정보를 입력해주세요!</p>
				</div>
				<div class="col-sm-4 offset-md-1 py-4">
					<h4 class="text-white">지켜야 할점</h4>
					<ul class="list-unstyled">
						<li><a href="#" class="text-white">하나! 예의를 지켜주세요.</a></li>
						<li><a href="#" class="text-white">둘! 한번 입양하면 끝까지 책임을 져주세요.</a></li>
						<li><a href="#" class="text-white">셋! 제대로 된 정보 기입을 해주세요.</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="navbar navbar-dark bg-dark shadow-sm">
		<div class="container">
			<a href="#" class="navbar-brand d-flex align-items-center">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
				<strong>동물 분양 사이트</strong>
			</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="تبديل التنقل">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</div>
</header>

<section class="py-5 text-center container">
	<div class="row py-lg-5">
		<div class="col-lg-6 col-md-8 mx-auto">
			<c:set var="id" value="#{login.userid}" />
			<h1 class="fw-light"><b>${id}</b>님,어서오세요!</h1>
			<p class="lead text-muted">동물분양사이트 입니다.</p>
			<p>
				<button class="btn btn-primary my-2" type="button" onclick="location.href='add'">새 글 추가하기</button>
				<a href="javascript:logout()" class="btn btn-secondary my-2">로그아웃</a>
			</p>
		</div>
	</div>
</section>

<c:forEach items="${list}" var="u">

	<div class="album py-5 bg-light">
		<div class="container">

			<div>

				<div class="col" id="1_div" >
					<div class="card shadow-sm" >
						<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c"></rect>
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">사진</text></svg>

						<div class="card-body">
							<h4 class="card-text">${u.animalId}.${u.animalName}</h4>
							<p class="text-muted">${u.age}살</p>
							<p class="text-muted">${u.gender}</p>
							<p class="text-muted">${u.information}</p>
							<p class="text-muted">${u.address}</p>
							<small class="text-muted">${u.regdate}</small>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="editform/${u.animalId}" class="btn btn-sm btn-outline-secondary">수정</a>
									<a href="javascript:delete_ok('${u.animalId}')" class="btn btn-sm btn-outline-secondary">삭제</a>
								</div>
								<small class="text-muted">${u.age + u.animalId} Likes</small>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
</c:forEach>


<footer class="text-muted py-5">
	<div class="container">
		<p class="float-end mb-1">
			<a href="https://github.com/LeeHannaa/Spring_TeamProject.git">@깃허브 프로젝트 주소</a>
		</p>
		<p class="mb-1">실전프로젝트5 팀플 최종과제</p>
		<p class="mb-0">개발자 깃허브 주소 :   <a href="https://github.com/LeeMineo">@이민서 </a> <a href="https://github.com/LeeHannaa">@이한나</a></p>
	</div>
</footer>

</body>
</html>