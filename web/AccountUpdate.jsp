
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="java.io.PrintStream"%>
<%@page import="uta.cse4361.databases.DatabaseManager"%>
<%@page import="uta.cse4361.databases.DeleteAdvisor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="updateadvisor" class="uta.cse4361.beans.UpdateAdvisorAccountBean"/> 
        <jsp:setProperty name="updateadvisor" property="email" value="<%=request.getParameter("email")%>" />
        <jsp:setProperty name="updateadvisor" property="tempPassword" value="<%=(request.getParameter("password")!= null ? request.getParameter("password") : "")%>" />
        <jsp:setProperty name="updateadvisor" property="department" value="<%=request.getParameter("dept")%>" />
        <jsp:setProperty name="updateadvisor" property="rank" value="<%=(request.getParameter("rank") != null ? Integer.parseInt(request.getParameter("rank")) : 0)%>" />
        <jsp:setProperty name="updateadvisor" property="name" value="<%=request.getParameter("name")%>" />
        <jsp:setProperty name="updateadvisor" property="ID" value="<%=(request.getParameter("id") != null ? Integer.parseInt(request.getParameter("id")) : 0) %>" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Confirmation</title>
    </head>
<%
//            int rank = -1;
//            int sessionid = -1;
//            if ((session.getAttribute("id") == null) || (session.getAttribute("rank") == null)) {
//               response.sendRedirect("index.jsp");
//            }
//            if (!(session.getAttribute("id") == null)) {
//                    sessionid = Integer.parseInt((String) session.getAttribute("id"));
//                }
//                if (!(session.getAttribute("rank") == null)) {
//                    rank = Integer.parseInt((String) session.getAttribute("rank"));
//            }
//            if(rank != 1)
//                {
//                    response.sendRedirect("index.jsp");
//                }
        %>
    <body>
        <jsp:include page="navigationbar.jsp" />
        <div id="wrapper">
            <jsp:include page="header.jsp" />
            <div id="accordion">
                <h3>Account Confirmation</h3>
                <div>
                <%
                    String result;
                    if (request.getParameter("delete") != null && request.getParameter("delete").equals("1")) {
                        DatabaseManager dm = new DatabaseManager();
                        result = dm.deleteAdvisor(updateadvisor.getEmail());
                    }else{
                        result = updateadvisor.Advisor();
                    }
                    if (result == "") {
                        out.print(updateadvisor.getName() +"'s has been Account updated");
                    } 
                    else {
                        out.print("Account could not be updated.");
                    }
                %>
                </div>
            </div>
        </div>

    </body>
    <jsp:include page="footer.jsp" />
    <script type="text/javascript" src="js/AccountConfirmation.js"></script>
</html>
