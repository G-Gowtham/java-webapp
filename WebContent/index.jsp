<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import="com.coda.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
<title>webapp</title>
</head>
<body>
<h2>Data from the table 'student_details'</h2>

<%
ArrayList<String> al = Db_connection.connect();	
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
if(al!=null)
{	
for(int i=0;i<al.size()/5;i++) 
{
%>
<TR>
<TD><%=al.get(5*i+0)%></TD>
<TD><%=al.get(5*i+1)%></TD>
<TD><%=al.get(5*i+2)%></TD>
<TD><%=al.get(5*i+3)%></TD>
<TD><%=al.get(5*i+4)%></TD>
</TR>
<%}}%>

</font>
<font size="+3" color="red"></b>

<%
if(al==null)
{
	out.println("Unable to connect to database.");
}
%>
</font>
</body>
</html>