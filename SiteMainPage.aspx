<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SiteMainPage.aspx.vb" Inherits="SiteMainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="#ccccff" background="images/Crying-Eyes-Wallpapers-3.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 1px; position: absolute; top: 3px; width: 1022px; height: 178px;" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Logo2.bmp" Style="z-index: 101;
            left: 1px; position: absolute; top: 673px" />
        &nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#C0FFFF" BorderStyle="Solid"
            BorderWidth="2px" ImageUrl="~/Images/Admin Login.bmp" Style="z-index: 102;
            left: 137px; position: absolute; top: 247px; height: 34px; width: 256px; margin-top: 4px;" 
            PostBackUrl="~/AdminLoginPage.aspx" />
        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" 
            BorderColor="#FFC080" BorderStyle="Solid"
            BorderWidth="2px" ImageUrl="~/images/new_user_signup.jpg" Style="z-index: 111;
            left: 131px; position: absolute; top: 489px; height: 70px; width: 266px;" 
            PostBackUrl="~/CustomerSignUp.aspx" />
    
    </div>
        <p>
            &nbsp;</p>
    <p>
        <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#C0FFFF" BorderStyle="Solid"
            BorderWidth="2px" ImageUrl="~/Images/Customer Login.bmp" Style="z-index: 110;
            left: 138px; position: absolute; top: 364px; height: 37px; width: 257px;" 
            PostBackUrl="~/CustomerLoginPage.aspx" />
    </p>
        <asp:ImageButton ID="ImageButton4" runat="server" BorderColor="#FFFFC0" BorderStyle="Solid"
            BorderWidth="2px" ImageUrl="~/images/aboutus.bmp" Style="z-index: 103;
            left: 654px; position: absolute; top: 452px; height: 44px; width: 281px;" 
            PostBackUrl="~/Aboutus.aspx" />
    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/1250270750_blink.gif" 
        
        style="top: 210px; left: 679px; position: absolute; height: 207px; width: 259px" />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/download123.jpg" 
        
        
        
        style="top: 344px; left: 37px; position: absolute; height: 80px; width: 88px; right: 1217px" />
    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/images1234.jpg" 
        
        
        
        style="top: 228px; left: 37px; position: absolute; height: 77px; width: 86px" />
    </form>
</body>
</html>