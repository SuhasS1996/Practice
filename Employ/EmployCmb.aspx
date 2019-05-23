<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployCmb.aspx.cs" Inherits="Employ.EmployCmb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            border-style: solid;
            border-width: 4px;
        }
        .auto-style2 {
            width: 121px;
        }
        .auto-style3 {
            width: 121px;
            height: 156px;
        }
        .auto-style4 {
            height: 156px;
        }
        .auto-style5 {
            width: 121px;
            height: 61px;
        }
        .auto-style6 {
            height: 61px;
        }
        .auto-style7 {
            width: 121px;
            height: 115px;
        }
        .auto-style8 {
            height: 115px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Lbl_Dept" runat="server" Text="Department"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="dept" DataValueField="dept" Height="79px">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlpracticeConnectionString %>" SelectCommand="SELECT * FROM [EMp]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nam" DataValueField="nam" Height="131px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_Desig" runat="server" Text="Designation"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="desig" DataValueField="desig">
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Lbl_Basic" runat="server" Text="Basic"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="basic" DataValueField="basic">
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
