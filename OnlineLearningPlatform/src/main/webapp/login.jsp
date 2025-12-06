<html>
<head>
<style>
body {
    background: #e7e7e7;
    font-family: Arial;
    padding: 40px;
}
.form-box {
    width: 350px;
    margin: auto;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
}
input, button {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}
button {
    background: #28a745;
    color: white;
    border: none;
}
button:hover {
    background: #1e7e34;
}
</style>
</head>

<body>
<div class="form-box">
<h2>Login</h2>

<form action="login" method="post">
    <input type="text" name="email" placeholder="Email">
    <input type="password" name="password" placeholder="Password">
    <button type="submit">Login</button>
</form>
</div>
</body>
</html>
