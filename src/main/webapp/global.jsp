<%@ page import="javax.naming.Context, javax.naming.InitialContext" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<html>
<body>
<%
    // Get environment context
    Context initialContext = new InitialContext();
    Context environmentContext = (Context) initialContext.lookup("java:comp/env");
%>
  <h1>globalInteger: <%=(Integer) environmentContext.lookup("linkToGlobalInteger")%></h1>
</body>
</html>
