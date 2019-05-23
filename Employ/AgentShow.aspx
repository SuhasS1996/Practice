<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgentShow.aspx.cs" Inherits="Employ.AgentShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 383px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlpracticeConnectionString %>" SelectCommand="SELECT * FROM [Agent]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="AgentID" DataSourceID="SqlDataSource1" Height="309px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
            <Columns>
                <asp:BoundField DataField="AgentID" HeaderText="AgentID" InsertVisible="False" ReadOnly="True" SortExpression="AgentID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
