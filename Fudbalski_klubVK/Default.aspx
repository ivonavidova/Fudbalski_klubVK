<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fudbalski_klubVK._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Unos igraca</h2>
        <table style="width: 100%;">
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="JMBG: "></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Niste popunili!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red">Niste popunili!</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Ime: "></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Niste popunili!" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">Niste popunili!</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Prezime: "></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Niste popunili!" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red">Niste popunili!</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Broj dresa: "></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Niste popunili!" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red">Niste popunili!</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Datum rodjenja: "></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Niste popunili!" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red">Niste popunili!</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Unesite datum u formatu: YYYY-MM-DD" ForeColor="Red" ValidationExpression="\d\d\d\d-\d\d-\d\d">Unesite datum u formatu: YYYY-MM-DD</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Pozicija: "></asp:Label></td>
                <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Niste popunili!" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red">Niste popunili!</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click1" Width="96px" /></td>
            </tr>
        </table>
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>