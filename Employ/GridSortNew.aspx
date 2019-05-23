<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridSortNew.aspx.cs" Inherits="Employ.GridSortNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="dept" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Empno" HeaderText="Empno" ReadOnly="True" SortExpression="Empno" />
                <asp:BoundField DataField="nam" HeaderText="nam" SortExpression="nam" />
                <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                <asp:BoundField DataField="desig" HeaderText="desig" SortExpression="desig" />
                <asp:BoundField DataField="basic" HeaderText="basic" SortExpression="basic" />
                <asp:CommandField HeaderText="Select" SelectText="Select Employee From Dept" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlpracticeConnectionString %>" SelectCommand="SELECT * FROM [EMp]"></asp:SqlDataSource>
        <div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlpracticeConnectionString %>" SelectCommand="SELECT * FROM [EMp] WHERE ([dept] = @dept)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="dept" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Empno" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Empno" HeaderText="Empno" ReadOnly="True" SortExpression="Empno" />
                    <asp:BoundField DataField="nam" HeaderText="nam" SortExpression="nam" />
                    <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                    <asp:BoundField DataField="desig" HeaderText="desig" SortExpression="desig" />
                    <asp:BoundField DataField="basic" HeaderText="basic" SortExpression="basic" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
