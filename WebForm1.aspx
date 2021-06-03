<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FindProductsDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Find Product"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
        <asp:Button ID="btn_find" runat="server" OnClick="btn_find_Click" Text="Button" />
        <hr />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True">
        </asp:GridView>
        <hr />
    </form>
</body>
</html>
