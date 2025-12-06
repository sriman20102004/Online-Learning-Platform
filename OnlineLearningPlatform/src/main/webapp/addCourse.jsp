<html>
<head>
<style>
body {
    font-family: Arial;
    background: #f7f7f7;
    padding: 40px;
}
.form-box {
    width: 350px;
    margin: auto;
    padding: 20px;
    background: white;
    border-radius: 8px;
}
input, textarea, button {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}
button {
    background: #ff9800;
    color: white;
    border: none;
}
button:hover {
    background: #e68900;
}
</style>
</head>

<body>
<div class="form-box">
<h2>Add Course</h2>

<form action="addCourse" method="post">
    <input type="text" name="title" placeholder="Course Title">
    <textarea name="description" placeholder="Course Description" rows="4"></textarea>
    <button type="submit">Add Course</button>
</form>

</div>
</body>
</html>
