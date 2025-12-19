<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Register</title>

    <style>
 /* ----------- PAGE BACKGROUND ----------- */
body {
    margin: 0;
    padding: 0;
    font-family: "Poppins", sans-serif;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    background: linear-gradient(135deg, #ff9a9e, #fad0c4, #fad0c4, #fbc2eb, #a1c4fd);
    background-size: 300% 300%;
    animation: bgMove 9s infinite alternate ease-in-out;
}

@keyframes bgMove {
    0% { background-position: 0% 50%; }
    100% { background-position: 100% 50%; }
}

/* ---------- FORM CONTAINER (GLASS EFFECT) ---------- */
.container {
    width: 380px;
    padding: 40px;
    border-radius: 18px;
    background: rgba(255, 255, 255, 0.32);
    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);
    box-shadow: 0 12px 35px rgba(0, 0, 0, 0.2);
    animation: fadeIn 0.6s ease;
}

@keyframes fadeIn {
    0% { opacity: 0; transform: translateY(18px); }
    100% { opacity: 1; transform: translateY(0); }
}

/* ---------- FORM TITLE ---------- */
legend {
    text-align: center;
    font-size: 28px;
    font-weight: 600;
    margin-bottom: 20px;
    color: #2b2b2b;
}

/* ---------- INPUT BOXES ---------- */
.textbox {
    width: 100%;
    padding: 13px;
    border-radius: 10px;
    border: 2px solid transparent;
    background: rgba(255, 255, 255, 0.55);
    color: #2b2b2b;
    margin-bottom: 15px;
    font-size: 15px;
    transition: border 0.3s, box-shadow 0.3s;
}

.textbox:focus {
    border-color: #6a11cb;
    box-shadow: 0 0 10px rgba(106, 17, 203, 0.4);
    outline: none;
}

/* ---------- BUTTON BASE STYLE ---------- */
#btnRegister, #btnlogin, #btnadminlogin {
    width: 100%;
    padding: 12px;
    border-radius: 10px;
    border: none;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    margin-bottom: 14px;
    transition: 0.3s ease;
}

/* -------- REGISTER BUTTON -------- */
#btnRegister {
    background: linear-gradient(135deg, #6a11cb, #2575fc);
    color: white;
    box-shadow: 0 4px 12px rgba(37, 117, 252, 0.4);
}

#btnRegister:hover {
    transform: translateY(-3px);
    box-shadow: 0 7px 18px rgba(37, 117, 252, 0.55);
}

/* -------- USER LOGIN BUTTON -------- */
#btnlogin {
    background: white;
    color: #2575fc;
    border: 2px solid #2575fc;
}

#btnlogin:hover {
    color: white;
    background: #2575fc;
    transform: translateY(-3px);
}

/* -------- ADMIN LOGIN BUTTON -------- */
#btnadminlogin {
    background: white;
    color: #e91e63;
    border: 2px solid #e91e63;
}

#btnadminlogin:hover {
    color: white;
    background: #e91e63;
    transform: translateY(-3px);
}

/* ---------- LABELS ---------- */
label {
    font-weight: 500;
    color: #2b2b2b;
}

/* ---------- ERROR MESSAGE ---------- */
.error {
    color: #ff0033;
    text-align: center;
    font-weight: 600;
    margin-top: 8px;
}

    </style>
</head>

<body>
    
 <div class="page-center">
        <form id="form1" runat="server">
            <div class="container">
                <legend>Register</legend><br />
                
                    <label>Username</label><br />
                    <asp:TextBox ID="txtUser" CssClass="textbox" runat="server"></asp:TextBox><br />
                    <label>Password</label>
                    <asp:TextBox ID="txtPass" CssClass="textbox" TextMode="Password" runat="server"></asp:TextBox>                  
                <asp:Button ID="btnRegister"  runat="server" Text="Register" OnClick="btnRegister_Click" />  <br />

             
                 <asp:Button ID="btnlogin" runat="server" Text="User Login" OnClick="btnlogin_Click" />
                <br /><br />
                <asp:Button ID="btnadminlogin" runat="server" Text="Admin Login" OnClick="btnadminlogin_Click"  />
                <br /><br />
                <asp:Label ID="lblMsg" runat="server" CssClass="error"></asp:Label><br />
                
               

                    <asp:RegularExpressionValidator ID="RegularExpressionPass" runat="server"
                    ControlToValidate="txtPass" CssClass="validator"
                    ErrorMessage="Password must be at least 6 characters (letters and numbers only). "
                    ValidationExpression="^[a-zA-Z0-9]{6,}$" Display="Dynamic" /><br />


            </div>
        </form>

        
    </div>
</body>
</html>  