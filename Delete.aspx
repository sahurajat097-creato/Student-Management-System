<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Student</title>

   <style>

/* --- PAGE BACKGROUND --- */
body {
    margin: 0;
    padding: 0;
    font-family: "Segoe UI", Roboto, Arial, sans-serif;
    background: linear-gradient(135deg, #2b1055, #7597de);

    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* --- MAIN DELETE CARD (Glassmorphism) --- */
.delete {
    width: 450px;
    background: rgba(255, 255, 255, 0.18);
    backdrop-filter: blur(18px);
    padding: 35px;
    border-radius: 20px;
    box-shadow: 0 8px 40px rgba(0,0,0,0.3);
    border: 1px solid rgba(255,255,255,0.4);
    text-align: center;
    animation: fadeUp 0.8s ease;
}

/* Animation */
@keyframes fadeUp {
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
}

/* --- TITLE / HEADING --- */
.delete h2 {
    font-size: 28px;
    color: #ffffff;
    background-color:aquamarine;
    font-weight: 600;
    margin-bottom: 20px;
    letter-spacing: 1px;
}

/* --- LABEL TEXT --- */
label {
    font-size: 16px;
    font-weight: 500;
    color: #f0f0f0;
}

/* --- INPUT TEXTBOX --- */
input[type="text"] {
    width: 230px;
    padding: 12px;
    margin-top: 10px;
    margin-bottom: 18px;
    border-radius: 10px;
    border: none;
    font-size: 16px;
    outline: none;
    background: rgba(255, 255, 255, 0.85);
    transition: 0.2s;
}

input[type="text"]:focus {
    box-shadow: 0 0 10px rgba(255,255,255,0.7);
    transform: scale(1.02);
}

/* --- MODERN BUTTONS --- */
.btn {
    padding: 12px 25px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    font-size: 15px;
    font-weight: 600;
    transition: 0.25s;
    margin: 5px;
}

/* DELETE button */
/* DELETE */
#btndelete {
    background: rgba(255, 55, 55, 0.25);
    color: #fff;
    padding: 12px 28px;
    backdrop-filter: blur(10px);
    border-radius: 12px;
    border: 1px solid rgba(255,100,100,0.4);
    transition: 0.25s;
}
#btndelete:hover {
    background: rgba(255, 55, 55, 0.45);
    transform: translateY(-3px);
}

/* DELETE ALL */
#btndeleteall {
    background: rgba(255,165,0,0.25);
    color: #fff;
    padding: 12px 28px;
    backdrop-filter: blur(10px);
    border-radius: 12px;
    border: 1px solid rgba(255,165,0,0.4);
    transition: 0.25s;
}
#btndeleteall:hover {
    background: rgba(255,165,0,0.45);
    transform: translateY(-3px);
}

/* EXIT */
#btnexit {
    background: rgba(255,255,255,0.25);
    color: #fff;
    padding: 12px 28px;
    backdrop-filter: blur(8px);
    border-radius: 12px;
    border: 1px solid rgba(255,255,255,0.4);
    transition: 0.25s;
}
#btnexit:hover {
    background: rgba(255,255,255,0.45);
    transform: translateY(-3px);
}


/* --- MESSAGE LABEL --- */
#lblmsg {
    margin-top: 18px;
    display: block;
    font-size: 18px;
    font-weight: 600;
    color: #00ffcc;
    letter-spacing: 1px;
    text-shadow: 0px 0px 8px rgba(0,255,200,0.7);
}
legend {
 background: linear-gradient(135deg, #ff6a00, #ee0979);
 backdrop-filter: blur(8px);
    color: #fff;
    padding: 12px 30px;
    border-radius: 12px;
    border: 1px solid rgba(255,255,255,0.4);
    font-weight: 600;
}


</style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">

            <fieldset>
                <legend>DELETE</legend>

                <label style="font-size:16px; font-weight:bold;">ID:</label>
                <asp:TextBox ID="tbsid" runat="server"></asp:TextBox>

                <br /><br />

                <asp:Button ID="btndelete" runat="server" Text="DELETE" OnClick="btndelete_Click" />
                <asp:Button ID="btndeleteall" runat="server" Text="DELETE ALL" OnClick="btndeleteall_Click" />
                <asp:Button ID="btnexit" runat="server" Text="EXIT" OnClick="btnexit_Click" />

                <br />
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                
            </fieldset>

        </div>

    </form>
</body>
</html>