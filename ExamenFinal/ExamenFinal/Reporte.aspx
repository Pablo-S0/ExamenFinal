<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="ExamenFinal.Reporte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Gridview.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 671px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        <strong>Reportes</strong></p>
    <p class="auto-style3">
        <asp:Image ID="Image1" runat="server" Height="443px" ImageUrl="~/Imagenes/Reporte.png" Width="639px" />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Buscar Por Placa:
                <asp:TextBox ID="TBuscar" runat="server"></asp:TextBox>
                <asp:Button ID="BBuscar" runat="server" OnClick="BBuscar_Click" Text="Buscar" />
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
            </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
