<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD2.aspx.cs" Inherits="Employ.CRUD2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 229px">
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Empno" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Empno" HeaderText="Empno" ReadOnly="True" SortExpression="Empno" />
                <asp:BoundField DataField="nam" HeaderText="nam" SortExpression="nam" />
                <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                <asp:BoundField DataField="desig" HeaderText="desig" SortExpression="desig" />
                <asp:BoundField DataField="basic" HeaderText="basic" SortExpression="basic" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlpracticeConnectionString %>" DeleteCommand="DELETE FROM [EMp] WHERE [Empno] = @Empno" InsertCommand="INSERT INTO [EMp] ([Empno], [nam], [dept], [desig], [basic]) VALUES (@Empno, @nam, @dept, @desig, @basic)" SelectCommand="SELECT * FROM [EMp]" UpdateCommand="UPDATE [EMp] SET [nam] = @nam, [dept] = @dept, [desig] = @desig, [basic] = @basic WHERE [Empno] = @Empno">
            <DeleteParameters>
                <asp:Parameter Name="Empno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Empno" Type="Int32" />
                <asp:Parameter Name="nam" Type="String" />
                <asp:Parameter Name="dept" Type="String" />
                <asp:Parameter Name="desig" Type="String" />
                <asp:Parameter Name="basic" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nam" Type="String" />
                <asp:Parameter Name="dept" Type="String" />
                <asp:Parameter Name="desig" Type="String" />
                <asp:Parameter Name="basic" Type="Double" />
                <asp:Parameter Name="Empno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
