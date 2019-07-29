<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerSignUp.aspx.vb" Inherits="CustomerSignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="#ccccff" background="images/blue_eye_1680x1050.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        &nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="White" NavigateUrl="~/SiteMainPage.aspx" Style="z-index: 101; left: 4px;
            position: absolute; top: 207px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            Style="z-index: 103; left: 363px; position: absolute; top: 202px; width: 305px;" 
            BackColor="#9933FF" Font-Size="XX-Large" ForeColor="White">New Customer Signup</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 104; left: 238px; position: absolute; top: 261px" 
            Text="UserName" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 105; left: 237px; position: absolute; top: 298px" 
            Text="Password" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 415px; position: absolute;
            top: 262px; width: 146px;"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 415px; position: absolute;
            top: 299px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox3"
            ControlToValidate="TextBox2" ErrorMessage="CompareValidator" Font-Names="Verdana"
            Font-Size="Medium" Style="z-index: 108; left: 583px; position: absolute; top: 335px; height: 46px;"
            Width="424px" ForeColor="Lime" Font-Italic="True">* Password is not 
        matching.</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="RequiredFieldValidator" Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 109; left: 584px; position: absolute; top: 264px; bottom: 286px;" 
            Width="404px" ForeColor="Lime" Font-Italic="True">* Please enter proper 
        UserName.</asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 110;
            left: 504px; position: absolute; top: 644px" Text="Signup" Width="160px" Height="35px" />
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 112; left: 415px; position: absolute;
            top: 336px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 113; left: 236px; position: absolute; top: 371px;" Text="Name" 
            Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 111; left: 236px; position: absolute; top: 334px; width: 193px; height: 32px;" 
            Text="Retype Password" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 116; left: 415px; position: absolute;
            top: 373px" Width="243px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 117; left: 234px; position: absolute; top: 419px" 
            Text="Address" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        &nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 119; left: 237px; position: absolute; top: 591px" 
            Text="eMail" Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" Style="z-index: 120; left: 417px; position: absolute;
            top: 592px" Width="243px"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 122; left: 418px; position: absolute;
            top: 541px" Width="243px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Yellow"
            Style="z-index: 123; left: 237px; position: absolute; top: 540px" Text="Mobile No"
            Width="168px" Font-Italic="True" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 124; left: 417px; position: absolute;
            top: 417px" Width="243px" Height="99px" TextMode="MultiLine"></asp:TextBox>
        &nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="RequiredFieldValidator" Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 125; left: 584px; position: absolute; top: 298px" 
            Width="404px" ForeColor="Lime" Font-Italic="True">* Please enter proper password</asp:RequiredFieldValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8"
            ErrorMessage="RequiredFieldValidator" Font-Names="Verdana" Font-Size="Medium"
            Style="z-index: 125; left: 676px; position: absolute; top: 547px" 
            Width="404px" ForeColor="Lime" Font-Italic="True">* Please enter Mobile No</asp:RequiredFieldValidator>
        &nbsp; &nbsp;&nbsp;
    
    </div>
    <p>
     
     
        &nbsp;</p>
    <p>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 102; left: -3px; position: absolute; top: 843px; width: 1222px; height: 35px;" />
        </p>
    </form>
</body>
</html>