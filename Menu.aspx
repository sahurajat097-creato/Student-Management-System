<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color:#dfe3e6">
<head runat="server">
    <title>Menu</title>

    <style>
/* ---------- BODY ---------- */
body {
    background: linear-gradient(135deg, #141414, #1e1e1e);
    font-family: "Segoe UI", Arial, sans-serif;
    margin: 0;
    padding: 0;

    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}


/* ---------- MAIN MENU CONTAINER ---------- */
.menu {
    width: 430px;
    text-align: center;
    animation: fadeIn 0.9s ease;
}


/* ---------- FIELDSET (Glass Card) ---------- */
fieldset {
    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(12px);
    padding: 35px;
    border-radius: 16px;
    border: 1px solid rgba(255,255,255,0.25);

    box-shadow: 0 12px 35px rgba(0,0,0,0.35);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

fieldset:hover {
    transform: translateY(-6px);
    box-shadow: 0 18px 45px rgba(0,0,0,0.5);
}


/* ---------- FIELDSET TITLE ---------- */
legend {
    background: linear-gradient(135deg, #7929ff, #9f55ff);
    padding: 10px 28px;
    border-radius: 10px;
    font-size: 20px;
    color: #ffffff;
    letter-spacing: 0.6px;

    box-shadow: 0 6px 14px rgba(0,0,0,0.3);
}


/* ---------- MENU BUTTONS ---------- */
.menu-btn {
    width: 200px;
    padding: 14px;
    margin: 12px 0;

    font-size: 17px;
    font-weight: 600;
    border-radius: 10px;
    border: none;
    cursor: pointer;

    background: linear-gradient(135deg, #4c8dff, #005bea);
    color: #fff;

    box-shadow: 0 8px 20px rgba(0,0,0,0.3);
    transition: 0.25s ease;
}

/* Hover Animation */
.menu-btn:hover {
    transform: scale(1.07);
    background: linear-gradient(135deg, #3f7ceb, #0050d4);
    box-shadow: 0 10px 25px rgba(0,0,0,0.4);
}

/* Active (Click) */
.menu-btn:active {
    transform: scale(0.95);
    box-shadow: 0 4px 10px rgba(0,0,0,0.6);
}


/* ---------*


    </style>

</head>
<body>
    <form id="form1" runat="server">

        <div class="menu">
            <fieldset>
                <legend>STUDENT-APPLICATION</legend>

                <asp:Button ID="btninsert" runat="server" Text="CREATE"
                    CssClass="menu-btn" OnClick="btninsert_Click" /><br />

                <asp:Button ID="btnview" runat="server" Text="VIEW"
                    CssClass="menu-btn" OnClick="btnview_Click" /><br />

                <asp:Button ID="btnupdate" runat="server" Text="UPDATE"
                    CssClass="menu-btn" OnClick="btnupdate_Click" /><br />

                <asp:Button ID="btndelete" runat="server" Text="DELETE"
                    CssClass="menu-btn" OnClick="btndelete_Click" /><br />

            </fieldset>
        </div>

    </form>
</body>
</html>