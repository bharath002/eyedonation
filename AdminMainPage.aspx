<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminMainPage.aspx.vb" Inherits="AdminMainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="Black" background="images/blue_eye_1680x1050.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 1px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 101; left: -2px; position: absolute; top: 840px; width: 1239px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink9" runat="server" Font-Bold="True" 
            Font-Names="Calisto MT" Style="z-index: 102; left: 125px; position: absolute;
            top: 276px; bottom: 258px;" NavigateUrl="~/AdminEyeDonarList.aspx" Width="308px" 
            BackColor="White" Height="27px" Font-Italic="True" Font-Size="X-Large" 
            ForeColor="Black">Eye Donation Registered List</asp:HyperLink>
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#FFFFCC" NavigateUrl="~/Default.aspx" Style="z-index: 103; left: 4px;
            position: absolute; top: 206px">Home</asp:HyperLink>
        &nbsp;&nbsp;&nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink14" runat="server" Font-Bold="True" Font-Names="Calisto MT"
            NavigateUrl="~/AdminMemList.aspx" Style="z-index: 104; left: 127px; position: absolute;
            top: 231px" Width="308px" BackColor="White" Height="27px" 
            Font-Italic="True" Font-Size="X-Large" ForeColor="Black">Registered Member List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="arial rounded mtcalisto mt"
            NavigateUrl="~/AdminDoctorsRegistration.aspx" Style="z-index: 105; left: 124px;
            position: absolute; top: 326px" Width="308px" BackColor="White" 
            Height="27px" Font-Italic="True" Font-Size="X-Large" ForeColor="Black">Doctors Registration</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" BackColor="White" Font-Bold="True"
            Font-Names="Calisto MT" NavigateUrl="~/AdminEyePacketList.aspx" Style="z-index: 106;
            left: 122px; position: absolute; top: 428px" Width="308px" Height="27px" 
            Font-Italic="True" Font-Size="X-Large" ForeColor="Black">Cornea Packet List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="White" Font-Bold="True"
            Font-Names="Calisto MT" Height="27px" NavigateUrl="~/AdminPatientList.aspx"
            Style="z-index: 112; left: 123px; position: absolute; top: 483px" 
            Width="308px" Font-Italic="True" Font-Size="X-Large" ForeColor="Black">Patient List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink7" runat="server" BackColor="White" Font-Bold="True"
            Font-Names="Calisto MT" Height="27px" NavigateUrl="~/AdminIssueCornia.aspx"
            Style="z-index: 108; left: 122px; position: absolute; top: 533px" 
            Width="308px" Font-Italic="True" Font-Size="X-Large" ForeColor="Black">Issue 
        Cornea Packet</asp:HyperLink>
        &nbsp;
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Names="Calisto MT"
            NavigateUrl="~/AdminCornialCollection.aspx" Style="z-index: 109; left: 123px; position: absolute;
            top: 377px" Width="308px" BackColor="White" Height="27px" 
            Font-Italic="True" Font-Size="X-Large" ForeColor="Black">Eye Cornea Collection Entry</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="White" Font-Bold="True"
            Font-Names="Calisto MT" NavigateUrl="~/Default.aspx" Style="z-index: 110; left: 683px;
            position: absolute; top: 322px" Width="308px" Height="27px" 
            Font-Italic="True" Font-Size="X-Large" ForeColor="Black">Logout</asp:HyperLink>
        &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink15" runat="server" BackColor="White" Font-Bold="True"
            Font-Names="Calisto MT" Height="27px" NavigateUrl="~/AdminFAQ.aspx"
            Style="z-index: 111; left: 121px; position: absolute; top: 590px" 
            Width="308px" Font-Italic="True" Font-Size="X-Large" ForeColor="Black">FAQ Entry</asp:HyperLink>
    
    </div>
    <p>
        <asp:HyperLink ID="HyperLink16" runat="server" BackColor="White" Font-Bold="True"
            Font-Names="Calisto MT" Height="27px" NavigateUrl="~/AdminEditDoctor.aspx"
            Style="z-index: 111; left: 685px; position: absolute; top: 225px" 
            Width="308px" Font-Italic="True" Font-Size="X-Large" ForeColor="Black">Edit Doctor Details</asp:HyperLink>
    
    </p>
    </form>
</body>
</html>
