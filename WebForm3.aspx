<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="DatabaseConnectivityProject.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" PageSize="2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AbhayDBConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Father Name] = @original_Father_Name) OR ([Father Name] IS NULL AND @original_Father_Name IS NULL)) AND (([Mobile No.] = @original_column1) OR ([Mobile No.] IS NULL AND @original_column1 IS NULL))" InsertCommand="INSERT INTO [Student] ([Id], [Name], [Father Name], [Mobile No.]) VALUES (@Id, @Name, @Father_Name, @column1)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [Name] = @Name, [Father Name] = @Father_Name, [Mobile No.] = @column1 WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Father Name] = @original_Father_Name) OR ([Father Name] IS NULL AND @original_Father_Name IS NULL)) AND (([Mobile No.] = @original_column1) OR ([Mobile No.] IS NULL AND @original_column1 IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Father_Name" Type="String" />
                    <asp:Parameter Name="original_column1" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Father_Name" Type="String" />
                    <asp:Parameter Name="column1" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Father_Name" Type="String" />
                    <asp:Parameter Name="column1" Type="Int32" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Father_Name" Type="String" />
                    <asp:Parameter Name="original_column1" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
