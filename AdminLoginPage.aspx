<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminLoginPage.aspx.vb" Inherits="AdminLoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="#ccccff" background="images/Eyes23.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#CC33FF" NavigateUrl="~/Default.aspx" Style="z-index: 101; left: 4px;
            position: absolute; top: 204px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 102; left: -19px; position: absolute; top: 839px; width: 1233px; height: 35px;" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Black"
            Style="z-index: 104; left: 279px; position: absolute; top: 475px" 
            Text="User Name" Font-Italic="True" Font-Size="Large" 
            Font-Strikeout="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Black"
            
            Style="z-index: 105; left: 282px; position: absolute; top: 553px; height: 18px;" 
            Text="Password" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 439px; position: absolute;
            top: 472px; width: 150px; height: 25px;" BorderStyle="Solid"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="* Enter the Login Name" Font-Bold="True" 
            Font-Names="Verdana" Style="z-index: 108;
            left: 625px; position: absolute; top: 469px" Width="249px" 
            Font-Italic="True" Font-Size="Medium"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="* Please enter the Password" Font-Bold="True" Font-Names="Verdana"
            Style="z-index: 109; left: 622px; position: absolute; top: 555px" 
            Width="258px" Font-Italic="True" Font-Size="Medium"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 112;
            left: 477px; position: absolute; top: 659px" Text="Login" Width="109px" />
    
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 110; left: 439px; position: absolute;
            top: 555px; width: 150px; height: 25px;" TextMode="Password" 
            BorderStyle="Solid"></asp:TextBox>
    
    </div>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            Style="z-index: 103; left: 438px; position: absolute; top: 203px; width: 176px;" 
            BackColor="#FF6600" Font-Size="XX-Large" ForeColor="White">Admin Login</asp:HyperLink>
        </p>
    </form>
</body>
</html>
