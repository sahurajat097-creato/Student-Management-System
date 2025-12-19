<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background: linear-gradient(135deg, #a8e0ff, #d48efc);">
<head runat="server">
    <title>Update Details</title>

    <style>

/* ---------- PAGE BACKGROUND ---------- */
body {
    margin: 0;
    padding: 0;
    font-family: "Inter", "Segoe UI", Arial, sans-serif;
    background: #f1f4;
    background-color:#00eaff;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}


/* ---------- MAIN UPDATE CONTAINER ---------- */
.update {
    width: 480px;
    background: #ffffff;
    padding: 35px;
    border-radius: 24px;
    box-shadow: 0 20px 45px rgba(0, 0, 0, 0.12);
    border: 1px solid #e5e8ef;
    animation: fadeIn 0.6s ease-in-out;
}

/* Smooth Fade Animation */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}


/* ---------- LEGEND ---------- */
legend {
    color: #222;
    background: #ffffff;
    padding: 12px 20px;
    font-size: 22px;
    font-weight: 700;
    border-radius: 12px;
    border: 1px solid #e5e8ef;
    box-shadow: 0 4px 12px rgba(0,0,0,0.06);
}


/* ---------- FIELDSET ---------- */
fieldset {
    background: linear-gradient(135deg, #ff9966, #ff5e62);

    padding: 28px;
    border-radius: 18px;
    border: 1px solid #dde1e7;
    background: #fafbff;
}


/* ---------- TABLE STYLE ---------- */
table {
    width: 100%;
    margin-top: 10px;
}

th {
    padding: 10px 5px;
    color: #444;
    font-size: 16px;
    font-weight: 600;
}

td {
    padding: 10px 0;
}


/* ---------- INPUT TEXTBOX ---------- */
input[type="text"] {
    width: 240px;
    padding: 12px;
    border-radius: 12px;
    border: 1px solid #ccd2da;
    background: #ffffff;
    font-size: 15px;
    transition: all 0.25s ease;
}

input[type="text"]:focus {
    border-color: #6a5acd;
    box-shadow: 0 0 8px rgba(106,90,205,0.3);
}


/* ---------- BUTTONS ---------- */
#btnupdate,
#btnExit {
    padding: 12px 28px;
    border-radius: 12px;
    border: none;
    font-size: 16px;
    cursor: pointer;
    font-weight: 600;
    transition: 0.25s ease-in-out;
}


/* UPDATE button */
#btnupdate {
    background: #6a5acd;
    color: black;
}
#btnupdate:hover {
    background: #5848c4;
    transform: translateY(-3px);
}


/* EXIT button */
#btnExit {
    background: #e4e4e4;
    color: #444;
    margin-left: 10px;
}
#btnExit:hover {
    background: #d2d2d2;
    transform: translateY(-3px);
}


/* ---------- SUCCESS / ERROR LABEL ---------- */
#lbl {
    margin-top: 15px;
    display: block;
    font-size: 16px;
    font-weight: 700;
    color: #28a745;
}

.validator {
    font-size: 13px;
    color: #d63031;
    font-weight: bold;
}

</style>

</head>

<body>
    <form id="form1" runat="server">
        <div class="update">

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
                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnUpdate_Click" />
                    <asp:Button ID="btnExit" runat="server" Text="EXIT" OnClick="btnExit_Click" />
                </th>
            </tr>
             <asp:Label ID="lbl1" runat="server"></asp:Label>
           <asp:Label ID="lbl2" runat="server"></asp:Label>
             <asp:Label ID="lbl3" runat="server"></asp:Label>
               
               <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <asp:ValidationSummary ID="vsall" runat="server" />
   
        </table>
               
  
    </fieldset>

        </div>
    </form>
</body>
</html>