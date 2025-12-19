<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
     <style>
      /* Container */
body {
    margin: 0;
    padding: 0;
    font-family: "Poppins", Arial, sans-serif;

    background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
    background-size: 300% 300%;
    animation: bgShift 12s ease infinite;

    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

@keyframes bgShift {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}


/* ---------- INSERT FORM CONTAINER (GLASS) ---------- */
.insert {
    width: 450px;
    padding: 30px;
    border-radius: 20px;

    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(10px);
    -webkit-backdrop-filter: blur(10px);

    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.4);
    border: 1px solid rgba(255, 255, 255, 0.3);
}


/* ---------- FIELDSET (FROSTED GLASS) ---------- */
.insert fieldset {
    border-radius: 15px;
    border: 1px solid rgba(255, 255, 255, 0.4);
    padding: 25px;
    background: rgba(255, 255, 255, 0.15);
}


/* ---------- LEGEND ---------- */
.insert legend {
    padding: 6px 12px;
    font-size: 15px;
    font-weight: bold;
    border-radius: 6px;

    background: rgba(0, 255, 255, 0.7);
    color: #003333;
    letter-spacing: 1px;
}


/* ---------- TABLE ---------- */
.insert table {
    width: 100%;
    margin-top: 10px;
}

.insert th {
    text-align: left;
    color: #e8e8e8;
    font-size: 15px;
}


/* ---------- TEXTBOX ---------- */
.insert input[type="text"] {
    width: 200px;
    padding: 10px;
    border-radius: 10px;

    background: rgba(255, 255, 255, 0.25);
    border: 1px solid rgba(255,255,255,0.6);
    color: #fff;
    font-size: 16px;

    outline: none;
    transition: 0.3s;
}

.insert input[type="text"]:focus {
    border-color: #00eaff;
    background: rgba(255,255,255,0.4);
}


/* ---------- BUTTONS ---------- */
.btn-insert {
    padding: 12px 25px;
    border-radius: 30px;
    font-size: 16px;
    font-weight: bold;
    border: none;
    cursor: pointer;
    transition: 0.3s ease;
}


/* Insert Button (Neon Green) */
#btninsert {
    background: #00ff88;
    color: #00331e;
    box-shadow: 0 0 10px #00ff88;
}

#btninsert:hover {
    background: #00cc6d;
    box-shadow: 0 0 15px #00ff88;
}


/* Exit Button (Soft Red Glass) */
#btnExit {
    background: rgba(255, 50, 50, 0.3);
    color: #ffe5e5;
    margin-left: 10px;
    box-shadow: 0 0 8px rgba(255,50,50,0.4);
}

#btnExit:hover {
    background: rgba(255, 50, 50, 0.5);
}


/* ---------- MESSAGE LABEL ---------- */
#lblmsg {
    display: block;
    margin-top: 15px;
    font-size: 18px;
    font-weight: bold;
    color: #00ffea;
    text-shadow: 0 0 8px #00fff2;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="insert">
           <fieldset>
        <legend>Enter Details</legend>

        <table>
            <tr><th>SID:</th><th><asp:TextBox ID="txtSID" runat="server" /></th></tr>
            <tr><th>NAME:</th><th><asp:TextBox ID="txtName" runat="server" /></th></tr>
            <tr><th>GRADE:</th><th><asp:TextBox ID="txtGrade" runat="server" /></th></tr>
            <tr><th>CITY:</th><th><asp:TextBox ID="txtCity" runat="server" /></th></tr>

            <tr>
                <th></th>
                <th>
                    <asp:Button ID="btninsert" runat="server" Text="INSERT" OnClick="btninsert_Click" />
                    <asp:Button ID="btnExit" runat="server" Text="EXIT" OnClick="btnExit_Click" />
                </th>
            </tr>
           
   
        </table>
               
    <asp:Label ID="lbl1" runat="server"></asp:Label>
    <asp:Label ID="lbl2" runat="server"></asp:Label>
    <asp:Label ID="lbl3" runat="server"></asp:Label>
               
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
        <asp:ValidationSummary ID="vsall" runat="server" />

    </fieldset>
            </div>

    </form>
</body>
</html>