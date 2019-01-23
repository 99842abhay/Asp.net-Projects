<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookiesDemoPage2.aspx.cs" Inherits="StateManagementProject.CookiesDemoPage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cid" runat="server" CssClass="auto-style1" OnClick="cid_Click" Text="Dis. PId" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cname" runat="server" CssClass="auto-style1" OnClick="cname_Click" Text="Dis. PName" />
&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="cprice" runat="server" CssClass="auto-style1" OnClick="cprice_Click" Text="Dis. PPrice" />
            </strong>&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="call" runat="server" CssClass="auto-style1" OnClick="call_Click" Text="Dis. All" Width="92px" />
            </strong>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
