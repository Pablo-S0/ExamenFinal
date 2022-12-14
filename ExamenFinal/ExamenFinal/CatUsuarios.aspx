<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CatUsuarios.aspx.cs" Inherits="ExamenFinal.CatUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="Css/Gridview.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            width: 696px;
            text-align: center;
        }
        .auto-style4 {
            margin-bottom: 0px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
        <strong>Usuarios</strong></p>
    <p class="auto-style5">
        <asp:Image ID="Image1" runat="server" Height="379px" ImageUrl="~/Imagenes/Usuarios2.png" Width="553px" />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <div class="auto-style5">
                    &nbsp;
                <br />
                Nuevo Usuario:<asp:TextBox ID="TNUsuario" runat="server"></asp:TextBox>
                <br />
                Nombre:
                <asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
                <br />
                Apellido:
                <asp:TextBox ID="TApellido" runat="server"></asp:TextBox>
                <br />
                Clave:
                <asp:TextBox ID="TClave" runat="server"></asp:TextBox>
                <br />
                <br />
                Usuario:
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style4" DataSourceID="SqlDataSource1" DataTextField="Usuario" DataValueField="Usuario">
                </asp:DropDownList>
&nbsp;<br />
                    (Espacio para modificar o eliminar)
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VEHICULOSConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
                <div class="auto-style5">
                <br />
                <asp:Button ID="BAgregar" runat="server" OnClick="BAgregar_Click" Text="Agregar" />
                <asp:Button ID="BModificar" runat="server" OnClick="BModificar_Click" Text="Modificar" />
                <asp:Button ID="BBorrar" runat="server" OnClick="BBorrar_Click" Text="Borrar" />
                </div>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
            </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
