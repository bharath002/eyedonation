<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminDoctorsRegistration.aspx.vb" Inherits="AdminDoctorsRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="#ccccff" background="images/blue_eye_1680x1050.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        &nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#FFFFCC" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 3px;
            position: absolute; top: 206px" Font-Size="Medium">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 102; left: 2px; position: absolute; top: 836px; width: 1226px; height: 36px;" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 104; left: 240px; position: absolute; top: 265px" 
            Text="Doctor Name" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Forte" ForeColor="#CCFFFF"
            
            Style="z-index: 105; left: 1px; position: absolute; top: 262px; width: 170px;" 
            Text=" Doctors who voluntarily agreed to operate the eye in emergency" 
            Font-Size="X-Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 106; left: 239px; position: absolute; top: 314px" 
            Text="Address" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            Style="z-index: 103; left: 390px; position: absolute; top: 203px; width: 268px; right: 316px;" 
            BackColor="#FF6600" Font-Size="XX-Large" ForeColor="White">Doctors Entry Form</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 414px; position: absolute;
            top: 266px" Width="307px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 412px; position: absolute;
            top: 309px" TextMode="MultiLine" Width="306px" Height="86px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 566px; position: absolute; top: 727px" Text="Save" Width="160px" 
            Height="35px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 110; left: 236px; position: absolute; top: 470px" 
            Text="eMail Id" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 111; left: 412px; position: absolute;
            top: 418px" Width="146px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 112; left: 236px; position: absolute; top: 534px" 
            Text="Gender" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 113; left: 411px;
            position: absolute; top: 536px" Width="112px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 114; left: 237px; position: absolute; top: 419px" 
            Text="Mobile No" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 115; left: 410px; position: absolute;
            top: 471px" Width="311px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 117; left: 235px; position: absolute; top: 597px" Text="Working At"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 118; left: 411px; position: absolute;
            top: 601px" Width="311px"></asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
