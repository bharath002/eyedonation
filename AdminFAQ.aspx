<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminFAQ.aspx.vb" Inherits="AdminFAQ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Webbased Recruitment System </title>
</head>
<body bgcolor="#ccccff" background="images/digital_eye_149-1920x1200.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#FFFFCC" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 4px;
            position: absolute; top: 206px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 102; left: -3px; position: absolute; top: 840px; width: 1225px; height: 36px;" />
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 362px; position: absolute;
            top: 279px" Width="514px"></asp:TextBox>
        &nbsp;
       
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 362px; position: absolute;
            top: 342px" Width="514px" Height="235px" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 667px; position: absolute; top: 623px" Text="Save" Width="212px" 
            Height="38px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 110; left: 214px; position: absolute; top: 276px" 
            Text="Question" Width="140px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 112; left: 216px; position: absolute; top: 340px" 
            Text="Answer" Width="140px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp;&nbsp;
    
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            Style="z-index: 103; left: 472px; position: absolute; top: 203px; width: 153px; right: 717px;" 
            BackColor="#FF6600" Font-Size="XX-Large" ForeColor="White">FAQ Entry</asp:HyperLink>
    </form>
</body>
</html>
