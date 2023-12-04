<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Fudbalski_klubVK.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
       <h2>Prikaz igraca</h2>
       <asp:GridView ID="GridView1" CssClass="table table-bordered table-responsive" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
           <Columns>
               <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime" />
               <asp:BoundField DataField="Prezime" HeaderText="Prezime" SortExpression="Prezime" />
               <asp:BoundField DataField="brDresa" HeaderText="brDresa" SortExpression="brDresa" />
               <asp:BoundField DataField="datRodjenja" HeaderText="datRodjenja" SortExpression="datRodjenja" />
               <asp:BoundField DataField="Pozicija" HeaderText="Pozicija" SortExpression="Pozicija" />
               <asp:BoundField DataField="golovi" HeaderText="golovi" SortExpression="golovi" />
               <asp:BoundField DataField="Asistencije" HeaderText="Asistencije" SortExpression="Asistencije" />
               <asp:BoundField DataField="brUtakmica" HeaderText="brUtakmica" SortExpression="brUtakmica" />
           </Columns>
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
           <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F7F7F7" />
           <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
           <SortedDescendingCellStyle BackColor="#E5E5E5" />
           <SortedDescendingHeaderStyle BackColor="#242121" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fudbalski_klubConnectionString %>" ProviderName="<%$ ConnectionStrings:Fudbalski_klubConnectionString.ProviderName %>" SelectCommand="SELECT i.Ime,i.Prezime,i.brDresa,i.datRodjenja,i.Pozicija,s.golovi,s.Asistencije,s.brUtakmica
FROM Igrac I,Statistika s
WHERE i.jmbg=s.jmbg"></asp:SqlDataSource>
   </div>
</asp:Content>
