<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerSignupRes.aspx.vb" Inherits="CustomerSignupRes" %>

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
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 101; left: -47px; position: absolute; top: 844px; width: 1187px; height: 35px;" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Bodoni MT Black"
            
            Style="z-index: 102; left: 17px; position: absolute; top: 353px; width: 343px;" 
            ForeColor="Red" Font-Italic="True" Font-Size="X-Large">Signup is Successful!</asp:HyperLink>
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="#C04000" NavigateUrl="~/SiteMainPage.aspx" Style="z-index: 103; left: 2px;
            position: absolute; top: 207px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Bookman Old Style"
            ForeColor="Fuchsia" Height="26px" Style="z-index: 105; left: 19px; position: absolute;
            top: 466px" Width="341px" NavigateUrl="~/CustomerLoginPage.aspx" 
            Font-Italic="True" Font-Size="Large">Click here to login</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
