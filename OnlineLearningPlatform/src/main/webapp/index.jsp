<html>
<head>
<style>
body {
    font-family: Arial;
    background: #f0f0f0;
    padding: 40px;
}
.form-box {
    width: 350px;
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 8px;
}
input, button {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}
button {
    background: #007bff;
    color: white;
    border: none;
    cursor: pointer;
}
button:hover {
    background: #0056b3;
}
</style>
</head>

<body>
<div class="form-box">
<h2>Register</h2>

<form action="register" method="post">
    <input type="text" name="name" placeholder="Name">
    <input type="text" name="email" placeholder="Email">
    <input type="password" name="password" placeholder="Password">
    <button type="submit">Register</button>
</form>
</div>
</body>
</html>
