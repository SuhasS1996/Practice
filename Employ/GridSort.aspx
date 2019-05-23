<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridSort.aspx.cs" Inherits="Employ.GridSort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 354px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" DataSourceID="SqlDataSource1"  runat="server">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlpracticeConnectionString %>" SelectCommand="SELECT * FROM [EMp]"></asp:SqlDataSource>
    </form>
</body>
</html>
