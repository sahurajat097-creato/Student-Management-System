<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style>

/* --- Global Page Style --- */
/* ===== Modern Warm-Teal Theme (new design) ===== */
body {
    margin: 0;
    padding-top: 40px;
    font-family: "Segoe UI", Roboto, Arial, sans-serif;
    background: linear-gradient(180deg, #e6fbff 0%, #dff7f4 40%, #e9f8f1 100%);
    color: #12343b;
    -webkit-font-smoothing: antialiased;
}

/* --- Main Center Card (Flat, subtle elevation) --- */
.view {
    width: 640px;
    max-width: calc(100% - 36px);
    margin: 20px auto 60px;
    background: linear-gradient(180deg, rgba(255,255,255,0.95), rgba(250,252,251,0.9));
    padding: 32px;
    border-radius: 14px;
    box-shadow: 0 12px 30px rgba(18,52,59,0.07);
    border: 1px solid rgba(18,52,59,0.05);
    transition: transform .18s ease, box-shadow .18s ease;
}
.view:hover { transform: translateY(-4px); box-shadow: 0 18px 42px rgba(18,52,59,0.08); }

/* --- Title / Header --- */
.title {
    display: inline-block;
    background: linear-gradient(90deg,#0fb3a3,#0ea5b7);
    color: #ffffff;
    padding: 10px 22px;
    font-size: 20px;
    font-weight: 700;
    border-radius: 999px;
    box-shadow: 0 8

</style>


</head>
<body>
<form id="form1" runat="server">

    <div class="view">

       <asp:Label ID="Label1" runat="server" Text="Enter Student ID:" />
            <asp:TextBox ID="tbid" runat="server"></asp:TextBox>
            <asp:Button ID="btnid" runat="server" Text="Search" OnClick="btnid_Click" />
            <asp:Button ID="btnexit" runat="server" Text="Exit" OnClick="btnexit_Click" />
            <br /><br />

            <asp:Label ID="lblmsg" runat="server" ForeColor="Green"></asp:Label>
            <br /><br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="sid" HeaderText="Student ID" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="grade" HeaderText="Grade" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                </Columns>
            </asp:GridView>

    </div>

</form>
</body>

</html>