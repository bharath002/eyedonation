<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminFAQCatEntry.aspx.vb" Inherits="AdminFAQCatEntry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>InstaNews Online News Publishing </title>
</head>
<body bgcolor="#ccccff" background="images/digital_eye_149-1920x1200.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 4px;
            position: absolute; top: 209px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Files/logo2.bmp"
            Style="z-index: 102; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 217px; position: absolute; top: 203px" 
            BackColor="Maroon" Font-Size="XX-Large" ForeColor="#FF80FF" Width="615px">FAQ Category Name Details</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="yellow"
            Style="z-index: 104; left: 179px; position: absolute; top: 289px" 
            Text="Category Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="yellow"
            Style="z-index: 105; left: 178px; position: absolute; top: 329px" 
            Text="Details"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 327px; position: absolute;
            top: 287px" Width="205px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="* Enter the Category Name" Font-Bold="True" 
            Font-Names="Verdana" Style="z-index: 108;
            left: 546px; position: absolute; top: 289px" Width="249px"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 110; left: 328px; position: absolute;
            top: 328px" Width="203px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 112;
            left: 422px; position: absolute; top: 390px" Text="Save" Width="109px" />
    
    </div>
    </form>
</body>
</html>
