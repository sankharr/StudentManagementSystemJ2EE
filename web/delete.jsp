<%-- 
    Document   : delete
    Created on : Jul 26, 2020, 5:53:40 PM
    Author     : Sankha Rathnayake
--%>


<%@page import="java.sql.*" %>

<%
   

        String id = request.getParameter("id");
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/schooll", "root", "");
        pst = con.prepareStatement("delete from records where id = ?");     
        pst.setString(1, id);       
        pst.executeUpdate();

%>

<script>
    alert("Record Deleted");
</script>


