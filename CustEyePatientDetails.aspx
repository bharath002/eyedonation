<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustEyePatientDetails.aspx.vb" Inherits="CustEyePatientDetails" %>

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
            ForeColor="White" NavigateUrl="~/CustomerMainPage.aspx" Style="z-index: 101; left: 4px;
            position: absolute; top: 203px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 102; left: 2px; position: absolute; top: 836px; width: 1200px; height: 35px;" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 104; left: 240px; position: absolute; top: 264px" 
            Text="Patient Name" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 105; left: 240px; position: absolute; top: 301px" 
            Text="Address" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            Style="z-index: 103; left: 367px; position: absolute; top: 203px; width: 282px;" 
            BackColor="#9933FF" Font-Size="XX-Large" ForeColor="White">Eye Patient Details</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 415px; position: absolute;
            top: 264px" Width="307px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 416px; position: absolute;
            top: 305px" TextMode="MultiLine" Width="306px" Height="86px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 108;
            left: 570px; position: absolute; top: 657px" Text="Save" Width="160px" 
            Height="35px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 109; left: 243px; position: absolute; top: 509px" 
            Text="Date of Birth" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 110; left: 414px; position: absolute;
            top: 419px" Width="146px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 111; left: 243px; position: absolute; top: 465px" 
            Text="Gender" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 112; left: 416px;
            position: absolute; top: 465px" Width="112px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 113; left: 242px; position: absolute; top: 418px" 
            Text="Mobile No" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 114; left: 415px; position: absolute;
            top: 553px" Width="311px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 121; left: 415px; position: absolute;
            top: 598px" Width="311px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 116; left: 242px; position: absolute; top: 595px" Text="Requirement"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 117; left: 242px; position: absolute; top: 551px" Text="Eye Problem"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 118; left: 416px;
            position: absolute; top: 512px" Width="53px">
            <asp:ListItem>1</asp:ListItem>

        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 119; left: 470px;
            position: absolute; top: 512px" Width="59px">
            <asp:ListItem>1</asp:ListItem>
  
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList4" runat="server" Style="z-index: 120; left: 527px;
            position: absolute; top: 512px" Width="81px">
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
