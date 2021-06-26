<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
    <div class="d-flex align-items-center" style="height:100%;">
        <div class="d-flex" style="width:100%">
            <div class="container d-flex justify-content-center">
                <c:url var="loginUrl" value="/login" />
                <form action="${loginUrl}" method="post" class="col" style="max-width: 400px">
                    <c:if test="${param.error != null}">
                        <div class="alert alert-danger" role="alert">
                            Неправильный логин или пароль
                        </div>
                    </c:if>
                    <c:if test="${param.logout != null}">
                        <div class="alert alert-primary" role="alert">
                            Выход выполнен успешно
                        </div>
                    </c:if>
                    <c:if test="${param.debug != null}">
                        <div class="alert alert-success" role="alert">
                            <p class="text-center">Окно отладки</p>
                            <div class="d-grid gap-1 col-8 mx-auto">
                                <a class="btn btn-primary" role="button" href="/debug/see_all">Список всех топиков</a>
                                <a class="btn btn-primary" role="button" href="/debug/topic?id=1">Topic id=1</a>
                            </div>
                        </div>
                    </c:if>
                    <div class="mb-3">
                        <img src="data:image/png;base64,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">
                    </div>
                    <div class="mb-3">
                        <label for="loginInput" class="form-label" style="font-size: 20px">Логин</label>
                        <input name="ssoId" type="text" class="form-control form-control-lg" id="loginInput" aria-describedby="emailHelp" required>
                    </div>
                    <div class="mb-3">
                        <label for="passwordInput" class="form-label" style="font-size: 20px">Пароль</label>
                        <input name="password" type="password" class="form-control form-control-lg" id="passwordInput" required>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                    <div class="d-grid gap-2 d-md-flex justify-content-md-between">
                        <a class="btn btn-lg btn-secondary me-md-2" role="button" href="/registration">Зарегистрироваться</a>
                        <button class="btn btn-lg btn-primary" type="submit">Войти</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
