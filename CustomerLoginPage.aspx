<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerLoginPage.aspx.vb" Inherits="CustomerLoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="#ccccff" background="images/Human%20Eye.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="#C04000" NavigateUrl="~/SiteMainPage.aspx" Style="z-index: 101; left: 4px;
            position: absolute; top: 206px">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="#0000CC"
            Style="z-index: 104; left: 229px; position: absolute; top: 280px; bottom: 419px;" 
            Text="Cust Id" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="#0000CC"
            
            Style="z-index: 105; left: 229px; position: absolute; top: 334px; height: 17px;" 
            Text="Password" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            Style="z-index: 103; left: 219px; position: absolute; top: 203px" 
            BackColor="#9933FF" Font-Size="XX-Large" ForeColor="White" Width="335px">Customer  Login</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 337px; position: absolute;
            top: 281px; width: 145px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="* Enter the Login Name" Font-Bold="True" 
            Font-Names="Verdana" Style="z-index: 108;
            left: 504px; position: absolute; top: 282px" Width="249px" 
            ForeColor="Yellow" Font-Italic="True" Font-Size="Medium"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="* Please enter the Password" Font-Bold="True" Font-Names="Verdana"
            Style="z-index: 109; left: 505px; position: absolute; top: 334px" 
            Width="258px" ForeColor="Yellow" Font-Italic="True"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 110; left: 337px; position: absolute;
            top: 337px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 112;
            left: 374px; position: absolute; top: 404px" Text="Login" Width="109px" />
    
    </div>
    <p>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            
            Style="z-index: 102; left: -16px; position: absolute; top: 841px; width: 1240px; height: 35px;" />
        </p>
    </form>
</body>
</html>
