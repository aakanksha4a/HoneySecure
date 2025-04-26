<%@ page session="true" %>
<%
    String user = (String) session.getAttribute("username");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<script>
    // Automatically redirect to logout after 61 seconds
    setTimeout(function () {
        window.location.href = 'logout.jsp';
    }, 61000); // 61 seconds
</script>

<div style="position: absolute; top: 10px; right: 20px; color: white;">
  <!--   Welcome, <%= user %> | <a href="logout.jsp" style="color: white;">Logout</a>--> 
</div>
