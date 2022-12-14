<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CatPlacas.aspx.cs" Inherits="ExamenFinal.CatPlacas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Gridview.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 690px;
        }
        .auto-style4 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        <strong>Placas Automovil</strong></p>
    <p class="auto-style1">
        <asp:Image ID="Image1" runat="server" Height="281px" ImageUrl="~/Imagenes/CarroPlaca.png" Width="514px" />
    </p>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">Placa:
                <asp:TextBox ID="TNumPlaca" runat="server"></asp:TextBox>
                <br />
                Usuario:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Usuario" DataValueField="IdUsuario">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VEHICULOSConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
                Monto:
                <asp:TextBox ID="TMonto" runat="server" TextMode="Number"></asp:TextBox>
                <br />
                <br />
                Opcion para Modificar:<br />
                Seleccionar Placa:
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="NumPlaca" DataValueField="IdPlaca">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VEHICULOSConnectionString %>" SelectCommand="SELECT * FROM [Placa]"></asp:SqlDataSource>
                <br />
                Opcion para Borrar:<br />
                Seleccionar Placa:&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="NumPlaca" DataValueField="NumPlaca">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:VEHICULOSConnectionString %>" SelectCommand="SELECT * FROM [Placa]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <asp:Button ID="BAgregar" runat="server" Text="Agregar" OnClick="BAgregar_Click" />
                <asp:Button ID="BModificar" runat="server" Text="Modificar" OnClick="BModificar_Click" />
                <asp:Button ID="BBorrar" runat="server" Text="Borrar" OnClick="BBorrar_Click" />
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
            </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
