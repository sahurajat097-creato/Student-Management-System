<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Login</title>

    <style>
  /* ---------- BODY ---------- */
body {
    margin: 0;
    font-family: 'Arial', sans-serif;
    background: linear-gradient(135deg, #7f7fd5, #86a8e7, #91eae4); /* cool soft gradient */
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-size: 300% 300%;
    animation: bgFlow 12s infinite alternate ease-in-out;
}

/* Background animation */
@keyframes bgFlow {
    0% { background-position: left; }
    100% { background-position: right; }
}

/* ---------- LOGIN BOX ---------- */
.login-box {
    width: 380px;
    padding: 35px;
    border-radius: 18px;

    /* Glass effect */
    background: rgba(255, 255, 255, 0.20);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);

    border: 1px solid rgba(255, 255, 255, 0.3);
    box-shadow: 0 10px 25px rgba(0,0,0,0.25);
    color: #fff;
}

/* ---------- TITLE ---------- */
.login-box h2 {
    text-align: center;
    font-size: 28px;
    margin-bottom: 25px;
    background: linear-gradient(90deg, #7f7fd5, #91eae4);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    font-weight: bold;
}

/* ---------- LABEL ---------- */
label {
    color: #ffffff;
    font-weight: 600;
    margin-bottom: 6px;
    display: block;
}

/* ---------- INPUT FIELDS ---------- */
.textbox {
    width: 100%;
    padding: 12px;
    margin-bottom: 18px;
    border-radius: 10px;
    border: 1px solid rgba(255,255,255,0.4);


    </style>
</head>

<body>
    <div class="page-center">
        <form id="form1" runat="server">
            <div class="login-box">

                <h3 style="text-align:center;">Login</h3>

                <asp:TextBox ID="txtUser" CssClass="textbox" Placeholder="Username" runat="server"></asp:TextBox>
                <br /><br />

                <asp:TextBox ID="txtPass" CssClass="textbox" Placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                <br /><br />

                <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="Login" OnClick="btnLogin_Click" />

                <br /><br />
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>

            </div>
        </form>
    </div>
</body>
</html>