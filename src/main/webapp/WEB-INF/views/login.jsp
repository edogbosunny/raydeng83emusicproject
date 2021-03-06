<%--
  Created by IntelliJ IDEA.
  User: CRYSTALDAVE
  Date: 7/10/2017
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div clas=" container-wrapper">
    <div class="container">

        <div id="login-box">
            <h2>Log in with Username and Password</h2>
            <c:if test="${not empty msg}">
                <div class="msg">${msg} </div>

            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check" /> " method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: red">${error}</div>
                </c:if>

                <div class="form-group">
                    <label for="username">User:</label>
                    <input type="text" id="username" name="username" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="password">Password: </label>
                    <input type="password" id="password" name="password" class="form-control"/>
                </div>
                <input type="submit" value="Submit" class="btn btn-default"/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>


            </form>

        </div>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
    </div>
</div>

