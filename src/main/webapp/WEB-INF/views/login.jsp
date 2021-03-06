<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('../template/login/images/bg-01.jpg');">
			<div class="wrap-login100">
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger">	
							Username or password incorrect!
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">	
							You are not authorized to access this page!
					</div>
				</c:if>
				<form action="j_spring_security_check" id="my-login-form" class="login100-form validate-form" method="post">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" id="j_username" name="j_username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" id="j_password" name="j_password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="container-login100-form-btn">
						<button id="btn-login" type="submit" class="login100-form-btn">
							Login
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>

    <%--<script>
		$('#btn-login').click(function (e) {
			var username = $("#j_username").val();
			var password = $("#j_password").val();
			var data = "{ \"username\": " + "\"" + username + "\"" + ", \"password\": " + "\"" + password + "\" }";
			login(data);
		});

        function login(d) {
            $.ajax({
                url: '/api/login',
                type: 'POST',
                contentType: 'text/plain',
                data: d,
                success: function (result) {
					$('#my-login-form').attr('validated', true);
					$('#my-login-form').submit();
                },
                error: function (error) {
                    window.location.href = "/trang-chu";
                }
            });
        }
    </script>--%>
</body>
</html>