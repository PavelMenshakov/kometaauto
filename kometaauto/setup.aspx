<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="kometaauto.setup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<asp:TextBox runat="server" ID="normoh" Text="100р"></asp:TextBox>
    <asp:TextBox runat="server" ID="cours" Text="10 100р"></asp:TextBox>
    <asp:Button runat="server" ID="save" Text="Сохранить" />
</asp:Content>
