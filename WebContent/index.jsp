<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title>webapp</title>
</head>
<body>
<h2>Data from the table 'student_details'</h2>
<%
try {

String connectionURL = "jdbc:mysql://mysql:3306/student";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "root"); 
statement = connection.createStatement();
String QueryString = "select * from student_details;";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<tr>
    <th scope="col">Student_Id</th>
    <th scope="col">Name</th>
    <th scope="col">E-Mail</th>
    <th scope="col">Department</th>
    <th scope="col">Mobile</th>
</tr>

<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</font>
</body>
</html>