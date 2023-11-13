<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fudbalski_klubVK._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
     <div class="jumbotron">
         <asp:Label ID="Label1" runat="server" Text="Unos: "></asp:Label>
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     </div>

</asp:Content>