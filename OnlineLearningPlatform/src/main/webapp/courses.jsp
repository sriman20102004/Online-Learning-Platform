<%@ page import="java.util.*" %>

<%
ArrayList<String[]> list = (ArrayList<String[]>) request.getAttribute("data");
%>

<html>
<head>
<style>
body {
    font-family: Arial;
    background: #f1f1f1;
    padding: 40px;
}
.table-box {
    width: 600px;
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 8px;
}
table {
    width: 100%;
    border-collapse: collapse;
}
th {
    background: #333;
    color: white;
    padding: 10px;
}
td {
    padding: 10px;
    border-bottom: 1px solid #ccc;
}
</style>
</head>

<body>
<div class="table-box">
<h2>Available Courses</h2>

<table border="0">
<tr>
    <th>ID</th>
    <th>Title</th>
    <th>Description</th>
</tr>

<%
for(String[] row : list) {
%>
<tr>
    <td><%= row[0] %></td>
    <td><%= row[1] %></td>
    <td><%= row[2] %></td>
</tr>
<%
}
%>

</table>
</div>
</body>
</html>
