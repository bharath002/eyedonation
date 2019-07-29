<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminCornialCollection.aspx.vb" Inherits="AdminCornialCollection" %>

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
            ForeColor="#FFFFCC" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 1px;
            position: absolute; top: 210px" Font-Size="X-Large">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 102; left: 2px; position: absolute; top: 836px; width: 1293px; height: 42px;" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 104; left: 248px; position: absolute; top: 264px" 
            Text="Packet No" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 106; left: 248px; position: absolute; top: 301px" 
            Text="Collection Date" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            Style="z-index: 103; left: 312px; position: absolute; top: 203px; width: 394px;" 
            BackColor="#FF6600" Font-Size="XX-Large" ForeColor="White">Eye 
        Cornea Collection Entry</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 421px; position: absolute;
            top: 262px" Width="101px" Enabled="False"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 422px; position: absolute;
            top: 383px; height: 23px; width: 194px; right: 278px;"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 591px; position: absolute; top: 715px" Text="Save" Width="160px" 
            Height="35px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 110; left: 248px; position: absolute; top: 386px" 
            Text="Donor Name" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 111; left: 421px; position: absolute;
            top: 426px" Width="88px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 112; left: 249px; position: absolute; top: 426px" 
            Text="Age" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 113; left: 420px;
            position: absolute; top: 469px" Width="112px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList6" runat="server" Style="z-index: 114; left: 421px;
            position: absolute; top: 536px" Width="112px">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="DoctorName" DataValueField="DoctorName" Style="z-index: 115; left: 421px;
            position: absolute; top: 345px" Width="198px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>"
            SelectCommand="SELECT [DoctorName] FROM [DoctorTab]"></asp:SqlDataSource>
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 116; left: 248px; position: absolute; top: 344px" 
            Text="Operated Doctor" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 118; left: 421px; position: absolute;
            top: 589px" Width="311px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 119; left: 248px; position: absolute; top: 469px" Text="Gender"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 120; left: 248px; position: absolute; top: 533px" Text="Blood Group"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 125; left: 247px; position: absolute; top: 582px" Text="Cornea Condition"
            Width="171px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
       <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 122; left: 421px;
            position: absolute; top: 302px" Width="53px">
            <asp:ListItem>1</asp:ListItem>
         
         
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 123; left: 471px;
            position: absolute; top: 302px" Width="59px">
            <asp:ListItem>1</asp:ListItem>
          
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList4" runat="server" Style="z-index: 124; left: 530px;
            position: absolute; top: 302px" Width="81px">
            <asp:ListItem>2012</asp:ListItem>
        </asp:DropDownList>
    </div>
    <asp:DropDownList ID="DropDownList7" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="CustId" DataValueField="CustId" 
        
        style="top: 384px; left: 641px; position: absolute; height: 22px; width: 92px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
        SelectCommand="SELECT [CustId] FROM [EyeDonarTab] ORDER BY [CustId]">
    </asp:SqlDataSource>
    </form>
</body>
</html>