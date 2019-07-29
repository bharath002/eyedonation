<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustEyeDonationform.aspx.vb" Inherits="CustEyeDonationform" %>

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
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="White" NavigateUrl="~/CustomerMainPage.aspx" Style="z-index: 101; left: 5px;
            position: absolute; top: 206px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 102; left: 2px; position: absolute; top: 836px; width: 1192px; height: 35px;" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            Style="z-index: 103; left: 366px; position: absolute; top: 203px; width: 289px;" 
            BackColor="#9933FF" Font-Size="XX-Large" ForeColor="White">Eye Donation Form</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 104; left: 240px; position: absolute; top: 261px" 
            Text="Donator Name" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 105; left: 241px; position: absolute; top: 302px" 
            Text="Address" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 415px; position: absolute;
            top: 265px" Width="307px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 415px; position: absolute;
            top: 302px" TextMode="MultiLine" Width="306px" Height="86px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 108;
            left: 566px; position: absolute; top: 726px" Text="Save" Width="160px" 
            Height="35px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 109; left: 242px; position: absolute; top: 502px" 
            Text="Date of Birth" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 110; left: 416px; position: absolute;
            top: 413px" Width="146px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 119; left: 415px; position: absolute;
            top: 549px" Width="308px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 112; left: 242px; position: absolute; top: 464px" 
            Text="Gender" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 113; left: 417px;
            position: absolute; top: 465px" Width="112px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 114; left: 241px; position: absolute; top: 415px" 
            Text="Mobile No" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            
            
            
            
            Style="z-index: 115; left: 243px; position: absolute; top: 669px; right: 560px;" Text="Relationship"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            
            
            
            
            
            Style="z-index: 115; left: 244px; position: absolute; top: 606px; right: 471px;" Text="Authority"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            
            
            
            
            
            Style="z-index: 115; left: 243px; position: absolute; top: 545px; right: 472px;" Text="Any eye problem"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 116; left: 417px;
            position: absolute; top: 504px" Width="53px">
            <asp:ListItem>1</asp:ListItem>
   
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 117; left: 470px;
            position: absolute; top: 504px" Width="59px">
            <asp:ListItem>1</asp:ListItem>
 
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList5" runat="server" Style="z-index: 118; left: 416px;
            position: absolute; top: 672px" Width="81px">
            <asp:ListItem>Father</asp:ListItem>
            <asp:ListItem>Mother</asp:ListItem>
            <asp:ListItem>Brother</asp:ListItem>
            <asp:ListItem>Sister</asp:ListItem>
            <asp:ListItem>Husband</asp:ListItem>
            <asp:ListItem>Wife</asp:ListItem>
            <asp:ListItem>None/Self</asp:ListItem>
       
            <asp:ListItem>Son</asp:ListItem>
            <asp:ListItem>Daughter</asp:ListItem>
       
        </asp:DropDownList>
    
        <asp:DropDownList ID="DropDownList4" runat="server" Style="z-index: 118; left: 529px;
            position: absolute; top: 504px" Width="81px">
       
        </asp:DropDownList>
    
    </div>
    <p>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 119; left: 416px; position: absolute;
            top: 607px" Width="308px"></asp:TextBox>
        </p>
    </form>
</body>
</html>