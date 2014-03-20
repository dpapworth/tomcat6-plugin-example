<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<html>
<body>
  <%-- Output remote address of request. The address can be overridden using the x-forwarded-for header. --%>
  <%-- NB. The RemoteIpValve assumes that IPv4 is used. (Add -Djava.net.preferIPv4Stack=true to MAVEN_OPTS) --%>
  <h1>Remote Address: <%=request.getRemoteAddr()%></h1>
</body>
</html>