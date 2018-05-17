<%@ page import="members.memberDAO" %><%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 4.
  Time: AM 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="DAO" class="members.memberDAO" scope="application"/>
<%--<jsp:useBean id="DTO" class="members.memberDTO" scope="application">--%>
    <%--<jsp:setProperty name="DTO" property="memberID" value="<%=request.getParameter("memberID")%>"/>--%>
    <%--<jsp:setProperty name="DTO" property="memberPassword" value="<%=request.getParameter("memberPassword")%>"/>--%>
    <%--<jsp:setProperty name="DTO" property="memberEmail" value="<%=request.getParameter("memberEmail")%>"/>--%>
<%--</jsp:useBean>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%

        String memberID = request.getParameter("memberID");
        String memberPassword = request.getParameter("memberPassword");
        String memberEmail = request.getParameter("memberEmail");

        DAO = new memberDAO();
        if(DAO.join(memberID, memberPassword, memberEmail)){
            response.sendRedirect("/home");
        }
        else{
            response.sendRedirect("/Error");
        }
    %>

</body>
</html>
