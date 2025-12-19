<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Login</title>

    <style>
/* === MODERN GLOW CARD === */
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #1f1f3a, #131322);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    width: 380px;
    padding: 40px;
    border-radius: 20px;
    background: rgba(255,255,255,0.08);
    backdrop-filter: blur(12px);
    border: 1px solid rgba(255,255,255,0.15);
    box-shadow: 0 0 25px rgba(129, 42, 255, 0.5);
    color: #fff;
}

.container h2 {
    text-align: center;
    font-size: 28px;
    color: #a97bff;
    margin-bottom: 25px;
    text-shadow: 0 0 8px #a97bff;
}

label {
    font-size: 14px;
    margin-bottom: 5px;
    color: #ddd;
}

.textbox {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: none;
    background: rgba(255,255,255,0.2);
    color: #fff;
    transition: 0.3s;
}

.textbox:focus {
    outline: none;
    box-shadow: 0 0 12px #a97bff;
}

.btn {
    width: 100%;
    padding: 12px;
    border-radius: 10px;
    background: linear-gradient(90deg, #7e3ff2, #b37cff);
    border: none;
    color: #fff;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s;
}

.btn:hover {
    transform: scale(1.05);
    box-shadow: 0 0 18px #b37cff;
}

    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">
        <h2>Admin Login</h2>

        <label>Admin Name</label>
        <asp:TextBox ID="txtName" CssClass="textbox" runat="server"></asp:TextBox>

        <label>Password</label>
        <asp:TextBox ID="txtPass" CssClass="textbox" TextMode="Password" runat="server"></asp:TextBox>

        <asp:Button ID="btnLogin" CssClass="btn" Text="Login" runat="server" OnClick="btnLogin_Click" />

        <br /><br />
        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
    </div>
</form>
</body>
</html>