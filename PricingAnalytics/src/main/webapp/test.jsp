<%-- 
    Document   : test.jsp
    Created on : May 25, 2015, 3:48:48 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String key = request.getParameter("key"); 
              String thongtinsanpham = request.getParameter("thongtinsanpham"); 
              out.print(key);
              out.print(thongtinsanpham);
            %>
            
    </body>
</html>
