<%
String username = (String) session.getAttribute("username");
%>

<html>
<head>
<style>
body {
    background: #eef1f5;
    font-family: Arial;
    padding: 40px;
}
.container {
    width: 400px;
    margin: auto;
    background: white;
    padding: 25px;
    border-radius: 10px;
    text-align: center;
}
a {
    display: inline-block;
    margin: 10px;
    padding: 10px 15px;
    background: #007bff;
    color: white;
    border-radius: 5px;
    text-decoration: none;
}
a:hover {
    background: #0056b3;
}
</style>
</head>

<body>
<div class="container">
<h2>Welcome <%= username %></h2>

<a href="addCourse.jsp">Add Course</a>
<a href="courses">View Courses</a>
</div>
</body>
</html>
