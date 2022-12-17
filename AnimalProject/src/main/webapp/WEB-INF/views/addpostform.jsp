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

    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>

<div class="py-5 text-center" style="background-color: darkgray">
    <h2>새로운 동물 추가!</h2>
    <p class="lead">추가하고 싶은 아이의 정보를 입력해주세요!</p>
</div>


<form action="addok" method="post">
    <table id="list">
        <div class="col-md-7 col-lg-8 ">
            <h4 class="mb-3"></h4>
            <form class="needs-validation" novalidate="">
                <div class="row g-3">
                    <div class="col-sm-4">
                        <label for="firstName" class="form-label">이름</label>
                        <input type="text" class="form-control" name="animalName" id="firstName"/>
                        <div class="invalid-feedback">
                            다시입력해주세요.
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <label class="form-label">나이</label>
                        <input type="text" class="form-control" name="age"/>
                        <div class="invalid-feedback">
                            다시입력해주세요.
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <label class="form-label">성별</label>
                        <input type="text" class="form-control" name="gender"/>
                        <div class="invalid-feedback">
                            다시입력해주세요.
                        </div>
                    </div>


                    <div class="col-12">
                        <label class="form-label">추가설명</label>
                        <textarea cols="50" class="form-control" rows="5" name="information" placeholder="아이의 특징을 설명해주세요!"></textarea>
                        <div class="invalid-feedback">
                            제대로 된 정보를 입력해주세요.
                        </div>
                    </div>

                    <div class="col-12">
                        <label class="form-label">전화번호</label>
                        <input type="text" name="phonenumber" class="form-control" placeholder="번호를 입력해 주세요."/>
                        <div class="invalid-feedback">
                            제대로 된 정보를 입력해주세요.
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="address" class="form-label">집주소입력</label>
                        <input type="text" name="address" class="form-control" id="address" placeholder="주소를 입력해 주세요."/>
                        <div class="invalid-feedback">
                            제대로 된 정보를 입력해주세요.
                        </div>
                    </div>
                </div>

                <hr class="my-4">

            </form>
        </div>
    </table>
</form>

<div class="py-5 text-center">
    <button  class="w-100 btn btn-primary btn-lg" type="button" onclick="location.href='list'">게시판으로 이동</button>
    <button class="w-100 btn btn-primary btn-lg" type="submit"> 등록하기 </button>
</div>


</html>