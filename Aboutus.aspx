<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Aboutus.aspx.vb" Inherits="Aboutus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#ffffcc" background="images/3d-eye-1024x768.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" />
    
    </div>
    <asp:Panel ID="Panel1" runat="server" 
        
        style="top: 377px; left: 227px; position: absolute; height: 244px; width: 539px" 
        Font-Names="Aparajita" Font-Size="X-Large" ForeColor="Red" 
        BorderColor="Black" BorderStyle="Solid">


        This eye bank is a charitable organization and is not for profit organization. 
        They are purely functioning for the benefit of the society. The eye bank 
        facilitates removal of eyes, processing of eyes and evaluation of the eyes and 
        distributes them to the needy. This Website Belongs to Creators of This Website 
        (R &amp; C) Copywrite Protected by IBRAHIM &amp; ALTEYEB .

        <br />
        <br />
        To contact us Visit - <a>www.rceyebank.org</a><br />
        Office No - 08023508044

    </asp:Panel>
    <p style="margin-left: 40px">
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="#CC6600" 
            NavigateUrl="~/SiteMainPage.aspx">HOME</asp:HyperLink>
    </p>
    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/eyebank_kolam.jpg" 
        
        
        
        style="top: 264px; left: 229px; position: absolute; height: 97px; width: 546px" />
    <p>
        &nbsp;</p>
    <p>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/buggi_shield.png" 
        
        
            style="top: 266px; left: 96px; position: absolute; height: 90px; width: 88px; right: 1158px;" />
    </p>
    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/copyright-small.png" 
        
        
        style="top: 524px; left: 578px; position: absolute; height: 95px; width: 133px; right: 631px;" />
    <asp:Image ID="Image6" runat="server" ImageUrl="~/images/41.jpg" 
        
        style="top: 218px; left: 450px; position: absolute; height: 42px; width: 130px" />
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
