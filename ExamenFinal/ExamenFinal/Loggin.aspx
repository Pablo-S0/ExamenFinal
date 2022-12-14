<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loggin.aspx.cs" Inherits="ExamenFinal.Loggin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Css/Loggin.css" rel="stylesheet" />
    
    <link href="Css/Estilos.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <br />
            <span class="auto-style3"><strong>Login</strong></span><br />
            <br />
            <asp:Label ID="LEamil" runat="server" Text="Usuario"></asp:Label>
            <br />
            <asp:TextBox ID="TEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LClave" runat="server" Text="Clave"></asp:Label>
            <br />
            <asp:TextBox ID="TClave" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BIngresar" runat="server" OnClick="BIngresar_Click" Text="Ingresar" />
            <br />
            <asp:Label ID="LError" runat="server" CssClass="auto-style1"></asp:Label>
        </div>
    </form>
</body>
</html>
