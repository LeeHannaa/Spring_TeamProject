<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin=“anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>


  <meta charset="UTF-8">
  <title>Insert title here</title>
  <style>
    img,label { display:inline-block;}
    label{ width:130px}
    button{ background-color:blue; color:white; font-size:15px}
  </style>
</head>

<body class="text-center">

<div style ='width:100%; text-align:center; padding-top:100px'>
  <main class="form-signin w-100 m-auto">
    <form method="post" action="loginOk">
      <img src='${pageContext.request.contextPath}/resources/img/dog.png' height="250">
      <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

      <div class="form-floating">
        <input type='text' name='userid' class="form-control" id="floatingInput" />
        <label for="floatingInput">ID</label>
      </div>
      <div class="form-floating">
        <input type='password' name='password' class="form-control" id="floatingPassword" />
        <label for="floatingPassword">Password</label>
      </div>

      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">©실전프로젝트 과제5</p>
    </form>


  </main>
</div>
</body>
</html>
