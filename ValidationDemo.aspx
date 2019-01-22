<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationDemo.aspx.cs" Inherits="DatabaseConnectivityProject.ValidationDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            margin-top: 126px;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            width: 568px;
        }
    </style>
</head>
<body style="height: 432px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextName" runat="server" OnTextChanged="TextName_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblPswd" runat="server" Text="Password"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextPswd" runat="server" OnTextChanged="TextPswd_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPswd" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblCpswd" runat="server" Text="Confirm Password"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextConPswd" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextConPswd" ErrorMessage="Please Enter Correct Password"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPswd" ControlToValidate="TextConPswd" ErrorMessage="Password did not matched"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextAge" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextAge" ErrorMessage="Age Can Not Be blank"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextAge" ErrorMessage="RangeValidator"></asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextEmail" ErrorMessage="Please Enter valid Email"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            <strong>
            <asp:Button ID="btnLogin" runat="server" Text="Log In" Width="88px" />
            </strong>
        </p>
    </form>
</body>
</html>
