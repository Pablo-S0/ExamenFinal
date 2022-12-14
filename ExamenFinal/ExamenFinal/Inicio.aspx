<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ExamenFinal.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    .auto-style2 {
        text-align: center;
        font-size: xx-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
        <strong>Sistema Control Vehiculos</strong></p>
    <p class="auto-style1">
        <asp:Image ID="Image1" runat="server" Height="322px" ImageUrl="~/Imagenes/Centro V.png" Width="468px" />
    </p>
</asp:Content>
